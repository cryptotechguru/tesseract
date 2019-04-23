#! /bin/sh

sed -i 's/OCEAN/Tesseract/g' configure.ac
sed -i 's/ocean/tesseract/g' configure.ac

sed -i 's/OCEAN/Tesseract/g' src/Makefile.am
sed -i 's/ocean/tesseract/g' src/Makefile.am

find . -name "*.h"   | xargs sed -i 's/OCN/TESR/g'
find . -name "*.cpp" | xargs sed -i 's/OCN/TESR/g'
find . -name "*.h"   | xargs sed -i 's/ocean/tesseract/g'
find . -name "*.cpp" | xargs sed -i 's/ocean/tesseract/g'
find . -name "*.h"   | xargs sed -i 's/OCEAN/Tesseract/g'
find . -name "*.cpp" | xargs sed -i 's/OCEAN/Tesseract/g'

find . -name "*.py"  | xargs sed -i 's/eqbregtest/ocnregtest/g'
find . -name "*.py"  | xargs sed -i 's/OCN/TESR/g'
find . -name "*.py"  | xargs sed -i 's/ocean/tesseract/g'
find . -name "*.py"  | xargs sed -i 's/OCEAN/Tesseract/g'

sed -i 's/ocean/tesseract/g' eqbtest/util/data/bitcoin-util-test.json

find . -name "*.md"  | xargs sed -i 's/OCN/TESR/g'
find . -name "*.md"  | xargs sed -i 's/ocean/tesseract/g'
find . -name "*.md"  | xargs sed -i 's/OCEAN/Tesseract/g'
