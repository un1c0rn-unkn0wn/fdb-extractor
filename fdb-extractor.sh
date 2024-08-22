#!/bin/bash

# Small help and args check
if [ "$#" -lt 1 ];
then
    echo -e "\033[1mSimple script for extracting faces from \033[31mBeward\033[0m"
    echo -e "\n"
    echo -e "Usage: ./img-extractor.sh file.fdb"
    exit 1
fi

# Input/output folders
input_file=$1
output_folder="${input_file:0:-4}"

# Extracting files using binwalk and rename output folder
echo -e "\033[96mExtracting images...\033[0m"
binwalk --quiet --dd='jpeg' $input_file && mv _$input_file.extracted $output_folder

# Renaming sequentialy and clear garbage from images
j=1
for f in $output_folder/*
    do
       mv "$f" $output_folder/"$j.jpg" && mogrify -strip $output_folder/"$j.jpg"
       let j=j+1
    done

# Done message
echo -e "\033[92mDone!\033[0m"
exit 1
