for f in *.png; do convert -crop 640x480+1+53 $f ../$f; done
