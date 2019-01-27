#!/bin/bash 

# A script to complete steps of a pipeline 
# from downloading the data from NCBI through 
# to using BLAST to identify top matches in the
# GenBank nucleotide database 
# Kailie Dela Cruz
# September 27, 2018
# kmdelacruz@dons.usfca.edu 

# Download the list of files in the run table 
# to the raw data directory. The files in this run 
# table will be the files that we will analyze with BLAST. 
# These files will be modified by trimming, converting from 
# fastq to fasta, BLASTed, etc.  
echo "Download files in run table to raw data directory"
for SRA_number in $(cut -f 6 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | tail -n +2)
do
    fastq-dump -v "$SRA_number" -O data/raw_data
done

# Create QC reports for each of the
# runs using the FastQC program. These QC reports
# are important because they can be used to compare
# the files with each other. These QC reports tell us 
# things such as the quality reads of the files, the 
# lengths of the sequences, etc. 
echo "Add code to create QC reports"
fastqc data/raw_data/*.fastq --outdir=output/fastqc

# Trim the sequences based on their quality 
# scores. This function trims leading or trailing Ns, 
# discards any sequences below a length of 150 base pairs, 
# and uses a sliding window aveerage method to cut off reads
# when the base score drops below 25. A for loop is used here
# because there are multiple files. 
echo "Trim sequences based on their quality scores"
for trim in data/raw_data/*.fastq
do 
	TrimmomaticSE -threads 2 -phred33 "$trim" data/trim/"$(basename "$trim" .fastq)".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:15
done 

# Convert fastq files into fasta files so they 
# can be used as BLAST queries . This function converts the 
# files from fastq to fasta, which is needed because 
# BLAST only works on fasta files. A for loop is used here
# because multiple files are being looked at. The trimmed
# files are converted and NOT the untrimmed files. 
echo "Convert fastq files into fasta files"
for convert in data/raw_data/*.fastq
do 
	bioawk -c fastx '{print ">"$name"\n"$seq}' "$convert" > data/trim/"$(basename -s .fastq "$convert")".trim.fasta 
done

# Use blastn to search for the top match of 
# each sequence against the nt database. A for loop is
# used here so you can BLAST each of the files without having 
# to write out the code manually. Important to work in a tmux
# session because it will take hours to complete. Good idea to 
# test it on one file first before doing it on all of them. 
echo "Use blastn to search for the top match of each sequence"
for convert in data/trim/*.trim.fasta
do
	blastn -db /blast-db/nt -num_threads 2 -outfmt '10 sscinames std' -out output/blast_results/"$(basename -s .trim.fasta "$convert")"_blast_results.csv -max_target_seqs 1 -negative_gilist /blast-db/2018-09-19_environmental_sequence.gi -query "$convert"
done
 
