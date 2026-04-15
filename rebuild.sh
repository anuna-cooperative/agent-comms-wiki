#!/bin/bash
# Rebuild the static site: run `zetl build`, then override the homepage with
# the rendered `index.md` content, and patch branding "vault" -> "Agent Communications".
set -e
cd "$(dirname "$0")"

# zetl has no exclude flag and walks dotdirs like .claude/, leaking their
# children (e.g. skills/hence) into the sidebar nav under clean-looking slugs
# that the post-build scrubber then misses. Stash .claude during the build
# and restore it after, even on failure.
STASH=$(mktemp -d)
trap '[ -d "$STASH/.claude" ] && mv "$STASH/.claude" ./.claude; rmdir "$STASH" 2>/dev/null || true' EXIT
[ -d .claude ] && mv .claude "$STASH/"

zetl build

# 0. zetl has no exclude flag and indexes dotdirs (.claude, .zetl, …). Strip
#    them from the output, and scrub any sidebar links that point into them.
find dist -maxdepth 1 -type d -name '.*' ! -name '.' ! -name '..' -exec rm -rf {} +
python3 - <<'PYEOF'
import re, pathlib
dot_link = re.compile(r'<li>\s*<a [^>]*href="[^"]*\.[A-Za-z0-9_-]+/[^"]*"[^>]*>.*?</li>\s*', re.DOTALL)
dot_details = re.compile(r'<details[^>]*>\s*<summary>\.[A-Za-z0-9_-]+</summary>.*?</details>\s*', re.DOTALL)
for p in pathlib.Path('dist').rglob('*.html'):
    h = p.read_text()
    new = dot_details.sub('', h)
    new = dot_link.sub('', new)
    if new != h:
        p.write_text(new)
PYEOF

# 1. Make index.md the homepage (zetl reserves / for the auto-listing).
mkdir -p public
cp dist/index/index.html public/index.html

# Rewrite relative links (../foo/) -> absolute (/foo/) and strip /index.html
# so that both `zetl serve` and Cloudflare Pages resolve them.
sed -i '' 's|href="\.\./|href="/|g; s|href="\.\.&#x2f;|href="/|g; s|src="\.\./|src="/|g; s|src="\.\.&#x2f;|src="/|g; s|/index\.html"|/"|g' public/index.html

cp public/index.html dist/index.html

# 2. Patch branding across all built pages.
#    The directory is named `vault`, so zetl uses it as the site title/nav label.
#    Replace the navbar label and <title> suffix site-wide.
find dist public -name '*.html' -type f -print0 | xargs -0 sed -i '' \
  -e 's|<a href="&#x2f;">vault</a>|<a href="/">Agent Communications</a>|g' \
  -e 's|<a href="/">vault</a>|<a href="/">Agent Communications</a>|g' \
  -e 's| — zetl</title>| — Agent Communications</title>|g' \
  -e 's|<title>Vault — zetl</title>|<title>Agent Communications</title>|g' \
  -e 's|<h1 class="text-3xl font-bold mb-6">vault</h1>|<h1 class="text-3xl font-bold mb-6">Agent Communications</h1>|g'

# 3. Inject live vault stats into the homepage.
stats_json=$(zetl stats --json)
pages=$(echo "$stats_json" | python3 -c "import json,sys; print(json.load(sys.stdin)['pages'])")
links=$(echo "$stats_json" | python3 -c "import json,sys; print(json.load(sys.stdin)['links'])")
dead=$(echo "$stats_json" | python3 -c "import json,sys; print(json.load(sys.stdin)['dead_links'])")
orphans=$(echo "$stats_json" | python3 -c "import json,sys; print(json.load(sys.stdin)['orphans'])")

stats_html='<div class="stats stats-horizontal shadow mb-8 w-full sm:w-auto"><div class="stat"><div class="stat-title">Pages</div><div class="stat-value text-primary">'"$pages"'</div></div><div class="stat"><div class="stat-title">Links</div><div class="stat-value">'"$links"'</div></div><div class="stat"><div class="stat-title">Dead links</div><div class="stat-value text-error">'"$dead"'</div></div><div class="stat"><div class="stat-title">Orphans</div><div class="stat-value text-warning">'"$orphans"'</div></div></div>'

python3 - <<PYEOF
import re
for path in ("public/index.html", "dist/index.html"):
    with open(path) as f:
        html = f.read()
    html = re.sub(r'(Agent Communications Vault</h1>)',
                  r'\1\n$stats_html', html, count=1)
    with open(path, 'w') as f:
        f.write(html)
PYEOF

# 4. Inject mermaid renderer into any page containing a mermaid code block.
mermaid_snippet='<script type="module">import mermaid from "https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs";document.querySelectorAll("pre>code.language-mermaid").forEach(function(el){var d=document.createElement("div");d.className="mermaid";d.textContent=el.textContent;el.parentElement.replaceWith(d);});mermaid.initialize({startOnLoad:true,theme:"default"});</script>'
mermaid_count=0
while IFS= read -r -d '' f; do
  if grep -q 'language-mermaid' "$f"; then
    # Insert just before </body>
    python3 -c "
import sys
p = sys.argv[1]
snip = sys.argv[2]
with open(p) as fh: h = fh.read()
if 'mermaid.esm.min.mjs' not in h:
    h = h.replace('</body>', snip + '</body>', 1)
    with open(p, 'w') as fh: fh.write(h)
" "$f" "$mermaid_snippet"
    mermaid_count=$((mermaid_count+1))
  fi
done < <(find dist public -name '*.html' -type f -print0)

echo "build + branding patch + stats injection complete ($pages pages, $links links, $dead dead, $orphans orphans); mermaid injected into $mermaid_count pages"
