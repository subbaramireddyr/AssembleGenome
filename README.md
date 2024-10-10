# AssembleGenome

## getNGS.sh

The `getNGS.sh` script is designed to process the retrieval of Next-Generation Sequencing (NGS) reads from the SRA database using the `fasterq-dump` tool. It employs the `--split-3` option to efficiently download paired-end reads, generating three output files: one for forward reads (R1), one for reverse reads (R2), and an additional file for unpaired reads if applicable. To use the script, users should replace `SRRNumber` with the appropriate SRA accession number, ensuring that the `fasterq-dump` tool is installed and accessible in their environment. The script should be executed in a directory with write permissions, as it will create FASTQ files in the current location.

## trim.sh

`trim.sh` script is designed to perform quality trimming on paired-end RNA-seq reads using the Trimmomatic tool. It specifies the path to the Trimmomatic program folder that contains the necessary Illumina adapter sequences, which is particularly relevant for Discovery environments; local systems may have a different path format. The script defines a `trim` function that utilizes Trimmomatic with the following parameters: it processes two input FASTQ files (`SRRNumber_1.fastq` and `SRRNumber_2.fastq`), producing paired and unpaired output files for both reads. The trimming steps include head cropping, adapter clipping, and filtering based on quality scores, leading to high-quality trimmed FASTQ files. Users should replace `SRRNumber` with the actual sample identifier before execution.
