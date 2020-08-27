#!/bin/bash
while getopts i:o:w: option; do
		case "${option}" in
			i) INPUT=${OPTARG};;
			o) OUTPUT=${OPTARG};;
			w) WIDTH=${OPTARG};;
		esac
	done
#If line contains MOTIF, append newline character"\n"
sed 's/^>/MOTIF /g' $INPUT | sed "/MOTIF/ s/$/\nletter-probability matrix: alength= 4 w= $WIDTH nsites= 20 E= 0/" | sed 's/\t.*-.*$//g' | sed '1s/^/MEME version 4\n\nALPHABET= ACGT\n\nstrands: + -\n\nBackground letter frequencies\nA 0.25 C 0.25 G 0.25 T 0.25\n\n/'> $OUTPUT
