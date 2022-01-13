#!/bin/bash

echo "Build Statics"
fontmake -g sources/*.glyphs -o ttf --round-instances --keep-direction -i --output-dir ./static
echo "Static Fonts Done"

echo "Build Variable Fonts"
fontmake -g sources/*.glyphs -o variable --round-instances --output-dir ./variable
echo "Variable Fonts Done"

echo "Removing UFOs"
rm -rf master_ufo instance_ufo
echo "UFOs Removed"

echo "Done!"