#!/usr/bin/env bash
# trim.sh

# path to the Trimmomatic program folder within our environment that contains the Illumina adapters
# this is only for Discovery - local systems will typically have a path like: /usr/local/programs/Trimmomatic-0.39-2/
PATH_TO_TRIMMOMATIC="/shared/centos7/anaconda3/2021.11/envs/BINF-12-2021/pkgs/trimmomatic-0.39-hdfd78af_2/share/trimmomatic-0.39-2"
function trim {
    trimmomatic PE \
    -threads 1 -phred33 \
    SRR522244_1.fastq \
    SRR522244_2.fastq \
    Rhodo.R1.paired.fastq \
    Rhodo.R1.unpaired.fastq \
    Rhodo.R2.paired.fastq \
    Rhodo.R2.unpaired.fastq \
    HEADCROP:0 \
    ILLUMINACLIP:$PATH_TO_TRIMMOMATIC/adapters/TruSeq3-PE.fa:2:30:10 \
    LEADING:20 TRAILING:20 SLIDINGWINDOW:4:30 MINLEN:36
}
trim
