#!/bin/bash

echo CPU `top -b -n1 | grep "Cpu(s)" | awk '{printf "%d", ($2 + $4)}'`\% "| "