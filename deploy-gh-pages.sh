#!/bin/bash

git config user.name "CodeIgniter"
git config user.email "hex@codeigniter.org.cn"
git clone --branch=gh-pages https://${GH_TOKEN}@github.com/CodeIgniter-Chinese/codeigniter-user-guide.git gh-pages
cd gh-pages
cp -Rf ./build/html/* .
git add -f .
git commit -m "Deploy to GitHub Pages"
git push -fq origin gh-pages
echo -e "Done\n"