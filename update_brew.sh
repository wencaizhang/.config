#!/bin/bash
# brew update && brew upgrade && brew cleanup

echo "$ brew update..."
brew update

echo "$ brew upgrade..."
brew upgrade

echo "$ brew cleanup..."
brew cleanup

echo "$ npm upgrade -g"
npm upgrade -g

caskapp=`brew list --cask`

for app in $caskapp
do
echo "$ try upgrae" ${app}
brew upgrade --cask $app
done
