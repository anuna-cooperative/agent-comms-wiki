#!/bin/bash
# Rebuild the static site: run `zetl build`, then override the homepage with
# the rendered `index.md` content, and patch branding "vault" -> "Agent Communications".
set -e
cd "$(dirname "$0")"

zetl build

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

echo "build + branding patch complete"
