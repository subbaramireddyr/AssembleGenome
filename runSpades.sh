#!/usr/bin/env bash
# runSpades.sh

mkdir -p "spades_output"

function Spades {
    spades.py \
    -1 .R1.paired.fastq \
    -2 .R2.paired.fastq \
    -o spades_output/
}

Spades # runs the function Spades

