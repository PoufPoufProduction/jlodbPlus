#!/bin/sh
echo convert $1
convert -crop 176x116+461+148 $1 fg.png
convert -resize 400x fg.png fg.png
convert -blur 2x3 $1 bg.png
composite -geometry  +200+80 fg.png bg.png $1
rm -f fg.png bg.png
