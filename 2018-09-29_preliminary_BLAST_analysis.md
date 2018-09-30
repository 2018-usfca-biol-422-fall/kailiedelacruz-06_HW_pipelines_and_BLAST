#!/bin/bash/

# According to an original study written by Fierer et al., "the diversity of skin-associated 
# bacterial communities is far higher than previously recognized, with a high degree of 
# interindividual variability in the composition of bacterial communities." In the study,
# they hypothesized that they could match skin bacteria left on objects to skin-associated
# bacteria found on the human that had touched the object. The study revealed how bacteria found
# on skin can be recuperated from surfaces that were touched, which can be used to show the 
# difference in objects that were handled by different skin surfaces, regardless of the length 
# of time of the last human contact. The results and the methods proved to be able to match 
# the object to the human individual that had touched it through the use of a "high-throughput 
# pyrosequencing-based approach to quantitatively compare the bacterial communities on objects 
# and skin."

# Given 19 fastq files, I was able to summarize the data found in them through QC checks ran 
# with FastQC. This process provided us with basic statistics, per base sequence quality, 
# per sequence quality scores, per base sequence content, per sequence GC content, per base 
# N content, sequence length distribution, sequence duplication levels, overrepresented
# sequences, adapter content, and Kmer content. Analyzing this given data of each of the 
# fastq files, I can make certain deductions on them in terms of if the sequences look to 
# be of sufficient quality, if there were any samples that were significantly worse than the 
# other or if there were any that were different in some sort of obvious way. 
