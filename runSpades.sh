#!/usr/bin/env bash
# runSpades.sh

mkdir -p "rhodo/"

function Spades {
    spades.py \
    -1 Rhodo.R1.paired.fastq \
    -2 Rhodo.R2.paired.fastq \
    -o rhodo/
}

Spades # runs the function Spades

