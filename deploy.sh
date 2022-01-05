#!/usr/bin/env sh

set -e

if [ -d "dist" ]; then rm -Rf dist; fi

npm run build

cd dist

# uncomment the below line and update it appropriately if using a custom domain
# echo "your site dot com" > CNAME

git init
git add -A
git commit -m 'Deploy'

# update the below line with your repository and preferred branches
git push -f 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@github.com:zenberg/blog.git master:gh-pages

cd -
