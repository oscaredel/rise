#! /bin/sh
cd "$(dirname "$0")"

echo 'Downloading latest image'
echo '---'

# Should calculate time here and convert it into the slider number(...) so europe is still visable

curl 'http://electro.ntsomz.ru/electro/download' \
-X 'POST' \
-H 'Referer: http://electro.ntsomz.ru/en/' \
-H 'Origin: http://electro.ntsomz.ru' \
-H 'Content-Type: application/x-www-form-urlencoded' \
-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' \
-H 'Upgrade-Insecure-Requests: 1' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15' \
--data 'fullimage=60' --output ../images/input/latest_full_image.png

echo '---'
echo 'Converting image'

convert ../images/input/latest_full_image.png \
  -fuzz 5% \
  -resize 7000x7000 \
  -trim \
  -background black \
  -vignette 0x0+20+20 \
  -gravity NorthEast \
  -crop 3100x1950+500+0 \
  ../images/output/europe.png

set_wallpaper(){
  cd ../macos-desktop
    ./set-desktop.sh $1
}

echo 'Setting wallpaper'
set_wallpaper /Users/oscaredel/code/oscaredel/rise/images/output/europe.png
