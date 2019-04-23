#! /bin/sh

sed -i 's/ocean/tesseract/g' *.sln
find . -name "*.vcxproj*" | xargs sed -i 's/ocean/tesseract/g'
rename 's/ocean/tesseract/' *
rename 's/ocean/tesseract/' */*
