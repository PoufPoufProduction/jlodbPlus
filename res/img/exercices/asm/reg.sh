#!/bin/sh
echo convert $1
convert -crop 140x88+6+432 $1 fg.png
convert -adaptive-resize 350x fg.png fg.png
convert -blur 2x3 $1 bg.png
composite -geometry  +250+40 fg.png bg.png $1
rm -f fg.png bg.png tmp.png
