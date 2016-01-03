#!/bin/bash

# syncs the tools to another project

echo $(pwd)
function help()
{
    printf "\t"
    printf "usage: ./sync.sh ~/projects/some_kicad_project/"
    printf "\n"
}

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    help
    exit
fi

read -p "Are you sure you want to copy 'bin' to '$1' ? [Y/N]: " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -r bin $1
    cp .gitignore $1
    echo "done!"
else
    echo "okay then doing nothing!"
    exit
fi
