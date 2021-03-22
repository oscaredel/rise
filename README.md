# Rise

Near real-time images of Earth for background wallpapers.

## Steps

1. Check Russian [Elektro sattelite](http://electro.ntsomz.ru) site/ftp for new image
2. Download high-resolution full image
3. Convert to anti aliased gnomonic projection
4. Convert to Europe projection
5. Set as wallpaper
6. Run cronjob every 30 minutes


convert elektro_image08_03_2021_16_00_fullimage.jpg -fuzz 20% -resize 4000x4000 -trim -background black -vignette 0x0+10+10 -gravity NorthEast -crop 1980x1200+300+0  circle.png
