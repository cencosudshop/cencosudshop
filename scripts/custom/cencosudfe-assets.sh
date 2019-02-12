#!/bin/bash

#locate the script in the themes folder
cd docroot/themes/custom

themes=$(find . ! -path . -maxdepth 1 -type d )
for theme in $themes; do
    cd $theme
    gulp sass
    cd ..
done
