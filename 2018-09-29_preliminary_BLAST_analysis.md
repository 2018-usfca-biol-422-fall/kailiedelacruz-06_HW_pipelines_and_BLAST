#!/bin/bash/

# Given 19 fastq files, I was able to summarize them through QC checks ran 
# with FastQC. This process provided us with basic statistics, per base sequence quality, 
# per sequence quality scores, per base sequence content, per sequence GC content, per base 
# N content, sequence length distribution, sequence duplication levels, overrepresented
# sequences, adapter content, and Kmer content. Analyzing this given data of each of the 
# fastq files, I can make certain deductions on them in terms of if the sequences look to 
# be of sufficient quality, if there were any samples that were significantly worse than the 
# other or if there were any that were different in some sort of obvious way. 
