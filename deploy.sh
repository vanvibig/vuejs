#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build 
# vue-cli-service build --publicPath='/repo-name'

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:vanvibig/vuejs.git gh-pages

cd -


=================

git subtree push --prefix dist origin gh-pages