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

# According to the QC checks, in looking at the basic statistics of the 19 files that were 
# being analyzed, most things were basically the same between them. Specifically, encoding was
# done with Sanger/Illumina 1.9, the % of GC fell around 50, and the sequence lenghts were 
# all found to be within 150-280. Along with this, throughout the 19 files, there were 0 
# sequences in all of them that were flagged as poor quality. With this information, we can 
# conclude that all of the results are accurate and there were no specific sequences that we 
# have to look out for in terms of skewed results. However, one thing that was found to be
# different between the files, though, were the total sequence numbers that were looked at.
# While some files contained 400-500 sequences, there were some who contained 600-800 sequences,
# some who only had as little as 250 and some who had as many as 1000 sequences.
# The difference in the length of the sequences analyzed throughout the 19 files could have skewed
# the overall results because some files may have revealed more information than others. 
# Other than sequence length and sequence length distribution, the FastQC reports were generally 
# the same between the files. The only other thing to note would be that each of the files have
# their own individual overrepresented sequences that are seen in different percentages. For 
# example, while ERR1942280 has 339 counts of an overrepresented sequence that takes up 84% of 
# its overall sequence, ERR1942281 has 61 counts of another overrepresented sequence that takes 
# up only 14.5% of its overall sequence. 

  
