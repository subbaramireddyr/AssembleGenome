# AssembleGenome

## getNGS.sh

The `getNGS.sh` script is designed to process the retrieval of Next-Generation Sequencing (NGS) reads from the SRA database using the `fasterq-dump` tool. It employs the `--split-3` option to efficiently download paired-end reads, generating three output files: one for forward reads (R1), one for reverse reads (R2), and an additional file for unpaired reads if applicable. To use the script, users should replace `SRRNumber` with the appropriate SRA accession number, ensuring that the `fasterq-dump` tool is installed and accessible in their environment. The script should be executed in a directory with write permissions, as it will create FASTQ files in the current location.

## trim.sh

`trim.sh` script is to perform quality trimming on paired-end RNA-seq reads using the Trimmomatic tool. It specifies the path to the Trimmomatic program folder that contains the necessary Illumina adapter sequences, which is particularly relevant for Discovery environments; local systems may have a different path format. The script defines a `trim` function that utilizes Trimmomatic with the following parameters: it processes two input FASTQ files (`SRRNumber_1.fastq` and `SRRNumber_2.fastq`), producing paired and unpaired output files for both reads. The trimming steps include head cropping, adapter clipping, and filtering based on quality scores, leading to high-quality trimmed FASTQ files.we should replace `SRRNumber` with the actual sample identifier before execution.

## runSpades.sh

`runSpades.sh` script is to assemble RNA or DNA sequences using the SPAdes (St. Petersburg Assembler) software. It begins by creating a directory named `spades_output` to store the assembly results. The script defines a function called `Spades`, which invokes the `spades.py` command with the following parameters: `-1` and `-2` specify the input paired-end FASTQ files (denoted as `.R1.paired.fastq` and `.R2.paired.fastq`, respectively). The output of the assembly process is directed to the previously created `spades_output` directory. The script concludes by calling the `Spades` function to execute the assembly process.we should ensure that the input FASTQ files are named appropriately before running the script.

## sbatch_assembleGenome.sh

`assembleGenome.sh` script is a SLURM batch script that automates the workflow for downloading, trimming, assembling, and analyzing genomic data. It sets job parameters such as partition, job name, time limit, and output file naming conventions, and initializes variables for the organism name and Sequence Read Archive (SRA) ID—both of which are intended to be defined in a future configuration file. The script logs the start time and loads the required Anaconda environment, then sequentially executes the `getNGS.sh` script to download the specified NGS reads, the `trim.sh` script to trim those reads, and the `runSpades.sh` script to assemble the trimmed reads into a genome. Finally, it analyzes the assembly results using `runQuast.sh` and logs the completion of the process with timestamps, ensuring clear tracking of each workflow stage.we should modify the `ORGANISM` and `SRR_ID` variables before execution to customize their analysis.

