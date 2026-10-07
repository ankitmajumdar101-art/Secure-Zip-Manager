#!/bin/bash

#Variables
BASE=/home/vboxuser/myscripts
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [ ! -d $BASE ]
then
    echo "directory does not exist : $BASE"
    exit 1
fi

#Create 'archive' foldar if not present 
if [ ! -d $BASE/archive ]
then
    mkdir $BASE/archive
fi

#Find the list of file larget than 20MB and last 10 days not modified
for i in $(find $BASE -maxdepth $DEPTH -type f -size +20M -mtime +$DAYS)
do
    if [ $RUN -eq 0 ]
    then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done