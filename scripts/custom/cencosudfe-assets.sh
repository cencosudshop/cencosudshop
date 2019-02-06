#!/bin/bash

#locate the script in the themes folder
cd docroot/themes/custom

themes=($(find . -type d))
for theme in "${themes[@]}"; do
    echo $theme
    if [ ! -d $theme/node_modules ];then
        cd $theme
        npm install
        cd ..
    fi
done