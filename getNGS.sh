#!/usr/bin/env bash
# getNGS.sh

# Retrieve the specified NGS reads.
# split 3 used for paired-end reads 1 file for forward reads and 2 file for reverse reads 
#3rd file for unpaired reads
fasterq-dump --split-3 SRRNumber
