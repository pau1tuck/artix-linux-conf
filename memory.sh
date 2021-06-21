#!/bin/bash

free -m | awk 'NR==2{printf "MEM %.2fG (%.0f%%) | ", $3/1000,$3*100/$2 }'