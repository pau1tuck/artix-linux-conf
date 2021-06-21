#!/bin/bash

df -h | awk 'NR==4{printf "HD %s (%s) |", $3, $5}'