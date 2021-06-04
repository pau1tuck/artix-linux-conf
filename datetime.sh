#!/bin/bash

date=`date -d "-6 hours" +%A' '%d' '%B' '%Y`
time=`date +%H:%M`
CEST=`date -d "-6 hours" +%H:%M`
echo $date "|" $CEST ZUR "|" $time SHA