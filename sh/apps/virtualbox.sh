#!/bin/bash
# virtualbox latest

VIRTUALBOX="virtualbox"
SITE="http://download.virtualbox.org/virtualbox"
STUFFIX="Linux_x86.run"
REVISION=$(curl "$SITE/LATEST.TXT")
GETVBOX="$SITE/$REVISION/"
FILENAME=$(curl $GETVBOX | sed -n '/Linux_x86\.run/p' | sed 's/ \|^.*NAME="\|"><.*$//g')
LATEST="$GETVBOX/$FILENAME"
DOWN_DIR=~/Downloads

wget -c -O "$DOWN_DIR/$FILENAME" $LATEST

if [ -f "$FILENAME" ]; then
    mv $FILENAME $DOWN_DIR
fi

chmod +x "$DOWN_DIR/$FILENAME"

sudo "$DOWN_DIR/$FILENAME"
