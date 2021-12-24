#!/bin/bash
id=`uuidgen`
echo ${id}

convert $1 ${id}.png

convert ${id}.png -interpolate Integer -filter point  -resize 4x4 ${id}_0004.png
convert ${id}_0004.png -interpolate Integer -filter point -resize 1024x1024 ${id}_01_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 8x8 ${id}_0008.png
convert ${id}_0008.png -interpolate Integer -filter point -resize 1024x1024 ${id}_02_1024.png

convert ${id}.png -interpolate Integer -filter point  -resize 16x16 ${id}_0016.png
convert ${id}_0016.png -interpolate Integer -filter point -resize 1024x1024 ${id}_03_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 32x32 ${id}_0032.png
convert ${id}_0032.png -interpolate Integer -filter point -resize 1024x1024 ${id}_04_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 48x48 ${id}_0048.png
convert ${id}_0048.png -interpolate Integer -filter point -resize 1024x1024 ${id}_05_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 56x56 ${id}_0056.png
convert ${id}_0056.png -interpolate Integer -filter point -resize 1024x1024 ${id}_06_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 64x64 ${id}_0064.png
convert ${id}_0064.png -interpolate Integer -filter point -resize 1024x1024 ${id}_07_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 72x72 ${id}_0072.png
convert ${id}_0072.png -interpolate Integer -filter point -resize 1024x1024 ${id}_08_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 100x100 ${id}_0100.png
convert ${id}_0100.png -interpolate Integer -filter point -resize 1024x1024 ${id}_09_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 128x128 ${id}_0128.png
convert ${id}_0128.png -interpolate Integer -filter point -resize 1024x1024 ${id}_10_1024.png

convert ${id}.png -interpolate Integer -filter point -resize 1024x1024 ${id}_1024.png
convert ${id}_1024.png -interpolate Integer -filter point -resize 1024x1024 ${id}_11_1024.png


mkdir -p ${id}
mv ${id}_01_1024.png ${id}
mv ${id}_02_1024.png ${id}
mv ${id}_03_1024.png ${id}
mv ${id}_04_1024.png ${id}
mv ${id}_05_1024.png ${id}
mv ${id}_06_1024.png ${id}
mv ${id}_07_1024.png ${id}
mv ${id}_08_1024.png ${id}
mv ${id}_09_1024.png ${id}
mv ${id}_10_1024.png ${id}
mv ${id}_11_1024.png ${id}
#
#
rm *.png

echo "$1 ${id}" >> index.txt 
