#!/bin/bash

free -m | awk 'NR==2{printf "%.2fG (%.0f%%) |\n", $3/1000,$3*100/16000 }'