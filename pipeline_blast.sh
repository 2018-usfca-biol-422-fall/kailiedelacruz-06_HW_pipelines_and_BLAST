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
    fastq-dump -v $SRA_number -O data/raw_data
done

# Add code to create QC reports for each of the
# runs using the FastQC program
echo "Add code to create QC reports"
fastqc data/raw_data/*.fastq --outdir=output/fastqc

