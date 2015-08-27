#!/bin/bash

git config --global user.name "CodeIgniter"
git config --global user.email "hex@codeigniter.org.cn"
git clone --branch=gh-pages https://${GH_TOKEN}@github.com/CodeIgniter-Chinese/codeigniter-user-guide.git gh-pages
cd gh-pages
cp -Rf ./build/html/* .
git add -f .
git commit -m "Deploy to GitHub Pages"
git push -fq origin gh-pages
echo -e "Done\n"