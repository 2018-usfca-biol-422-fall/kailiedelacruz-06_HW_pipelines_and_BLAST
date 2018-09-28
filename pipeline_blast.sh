#!/bin/bash 

# A script to complete steps of a pipeline 
# from downloading the data from NCBI through 
# to using BLAST to identify top matches in the
# GenBank nucleotide database 
# Kailie Dela Cruz
# September 27, 2018
# kmdelacruz@dons.usfca.edu 

# Download the list of files in the run table 
# to the raw data directory 
echo "Download files in run table to raw data directory"
for SRA_number in $(cut -f 6 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | tail -n +2)
do
    fastq-dump -v "$SRA_number" -O data/raw_data
done

# Create QC reports for each of the
# runs using the FastQC program
echo "Add code to create QC reports"
fastqc data/raw_data/*.fastq --outdir=output/fastqc

# Trim the sequences based on their quality 
# scores 
echo "Trim sequences based on their quality scores"
for trim in data/raw_data/*.fastq
do 
	TrimmomaticSE -threads 2 -phred33 $trim data/trim/$(basename "$trim" .fastq).trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:15
done 

# Convert fastq files into fasta files so they 
# can be used as BLAST queries 
echo "Convert fastq files into fasta files"

# Use blastn to search for the top match of 
# each sequence against the nt database 
echo "Use blastn to search for the top match of each sequence"
