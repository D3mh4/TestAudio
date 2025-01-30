#!/bin/bash
rm -rf release
mkdir -p release

cp -rf TestAudio *.{hpp,cpp,txt,json} LICENSE release/

mv release score-addon-testaudio
7z a score-addon-testaudio.zip score-addon-testaudio
