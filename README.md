# AssembleGenome

## getNGS.sh

The `getNGS.sh` script is designed to facilitate the retrieval of Next-Generation Sequencing (NGS) reads from the SRA database using the `fasterq-dump` tool. It employs the `--split-3` option to efficiently download paired-end reads, generating three output files: one for forward reads (R1), one for reverse reads (R2), and an additional file for unpaired reads if applicable. To use the script, users should replace `SRRNumber` with the appropriate SRA accession number, ensuring that the `fasterq-dump` tool is installed and accessible in their environment. The script should be executed in a directory with write permissions, as it will create FASTQ files in the current location.
