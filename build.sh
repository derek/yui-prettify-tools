#!/bin/bash

#Create the build directories
mkdir {tmp,build}

#Fetch the files
curl "http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.js" -o tmp/prettify.js
curl "http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.css" -o tmp/prettify.css

#Process and move the files
cat wrapper-pre.txt tmp/prettify.js wrapper-post.txt > build/prettify.js
cp tmp/prettify.css build/prettify.css

#Compress
yuicompressor build/prettify.js --type js -o build/prettify-min.js
yuicompressor build/prettify.css --type css -o build/prettify-min.css

#Clean up
rm -rf tmp