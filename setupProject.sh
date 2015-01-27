#!/bin/bash

##########################################################
# This script will download the split gap minder zip file,
# unzip it,makes some directories, and backs up the data
#into an archive folder 
##########################################################


echo Creating project directory structure
sleep 2  #pause for a while
mkdir -v data code output data/archive #make a directory under data

cd data

# Fetch the zip file
ZIP_FILE_URL="http://npk.io/1jHRK+"   # download data from internet
ZIP_FILE_NAME="rawSplitCountries.zip" # save the file name as 

echo Downloading zipped data file from $ZIP_FILE_URL 
sleep 2
curl -L $ZIP_FILE_URL -o $ZIP_FILE_NAME

echo Unzipping file. 
sleep 2
unzip $ZIP_FILE_NAME

echo Copying the zip file contents to the archive directory
sleep 2
cp -vr clean archive/ # copy the whole folder into archive

# Move back up a dir
cd ../  # move back the root directory

