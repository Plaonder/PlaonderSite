#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run blog:build

# navigate into the build output directory
cd blog/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "Manual deploy from Plaonder's PC"

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:Plaonder/PlaonderSite.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:Plaonder/plaonder.github.io.git gh-pages

cd -