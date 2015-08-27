#!/bin/bash

cd build/html
git init
git config user.name "Travis CI"
git config user.email "hex@codeigniter.org.cn"
git add .
git commit -m "Deploy to GitHub Pages"
git push "https://${GH_TOKEN}@github.com/CodeIgniter-Chinese/codeigniter-user-guide.git" master:gh-pages
