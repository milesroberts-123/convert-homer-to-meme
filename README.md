# convert-homer-to-meme
Use regular expressions to convert a list of motifs in HOMER format to MEME motif format.

[HOMER](http://homer.ucsd.edu/homer/motif/fasta.html) is an excellent *de novo* motif discovery tool. Unfortunately, it does not output it's results in [MEME motif format](http://meme-suite.org/doc/meme-format.html?man_type=web) preventing one from combining HOMER results with [MEME suite tools](http://meme-suite.org/index.html) for downstream motif analysis. This script provides a very simple fix to that problem!

## USAGE

For example, this code:

`./homer_to_meme -i example_homer_motifs.txt -w 7 -o example_homer_motifs.meme`

will take the HOMER-formatted motifs in `example_homer_motifs.txt`, convert them into MEME motif format, and save the results to `example_homer_motifs.meme`. The `-w 7` option tells the script that all of the motifs in the file are of width 7. Typically, HOMER only searches for motifs of a specific width, so you should know this value ahead of time.

## ASSUMPTIONS

My script automatically lists the background frequencies for the motifs as being uniform (i.e. A = 0.25, T = 0.25, G = 0.25, C = 0.25). You can easily modify the script to list different frequencies instead, if that's what you want.

## DEPENDENCIES

If your machine can run `sed` then you should be able to use this script. I wrote the script on a Linux subsystem (Ubuntu 20.04 LTS on a Windows 10 laptop). The output is compatible with MEME suite tools v5.1.1 and likely earlier versions too.
