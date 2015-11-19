#!/bin/sh
echo convert $1
convert -crop 180x90+459+55 $1 tmp.png
convert -size 200x110 xc:wheat fg.png
composite -geometry +10+10 tmp.png fg.png fg.png
convert -resize 400x220 fg.png fg.png
convert -blur 2x3 $1 bg.png
composite -geometry  +200+130 fg.png bg.png $1
rm -f fg.png bg.png tmp.png
