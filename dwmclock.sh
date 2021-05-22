#!/bin/bash

clock() {
	datetime=$(date +"%a %_d %b %Y | %H:%M %Z")

	printf "%s\n" "$datetime"
}

main() {
	while true; do
		xsetroot -name "  $(clock) "
		sleep 60
	done
}

main