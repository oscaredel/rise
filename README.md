# Rise

Near real-time images of Earth for background wallpapers.

## Steps

- [ ] Calculate time and convert to slider-frame so Europe is still visable
- [x] Check Russian [Elektro sattelite](http://electro.ntsomz.ru) site/ftp for new image
- [x] Download high-resolution full image
- [x] Convert to anti aliased gnomonic projection
- [x] Convert to Europe projection
- [x] Set as wallpaper
- [ ] Run cronjob every 30 minutes


convert elektro_image08_03_2021_16_00_fullimage.jpg -fuzz 20% -resize 4000x4000 -trim -background black -vignette 0x0+10+10 -gravity NorthEast -crop 1980x1200+300+0  circle.png
