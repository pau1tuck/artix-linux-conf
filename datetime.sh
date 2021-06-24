#!/bin/bash

date=`TZ=Europe/London date +%a' '%d' '%b' '%Y`
time=`date +%H:%M`
GMT=`TZ=Europe/London date +%H:%M`
echo "|" ${date^^} "🇬🇧" $GMT "🇨🇳" $time