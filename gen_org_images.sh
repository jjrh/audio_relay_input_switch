#!/bin/bash

# generates org mode img tags for the images directory

count=0
for img in images/*.png; do
    name=$(echo $img | cut -f1 -d "." | cut -f2 -d "/")

    echo "#+CAPTION: $name"
    echo "#+NAME:   fig:$count"
    echo "#+attr_html: :width 800px"
    echo "[[./$img]]"
    let count=count+1
    echo ""
done
