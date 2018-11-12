# Analysis of BLAST Results of 20 Files from Fierer et al. Study 

## Introduction

 The bacterial communities found on skin is very diverse from person to person [Fierer et al.]
 In the Fierer et al. study, they hypothesized that they could match skin bacteria left on objects to skin-associated
 bacteria found on the human that had touched the object. The study revealed how bacteria found
 on skin can be recuperated from surfaces that were touched, which can be used to show the 
 difference in objects that were handled by different skin surfaces, regardless of the length 
 of time of the last human contact. The results and the methods proved to be able to match 
 the object to the human individual that had touched it through the use of a high-throughput 
 pyrosequencing-based approach to compare the bacterial communities on objects 
 and the associated skin.

## Analysis of QC Reports 

 Given 20 fastq files, I was able to summarize the data found in them through QC checks ran 
 with FastQC. This process provided us with basic statistics, per base sequence quality, 
 per sequence quality scores, per base sequence content, per sequence GC content, per base 
 N content, sequence length distribution, sequence duplication levels, overrepresented
 sequences, adapter content, and Kmer content. Analyzing this given data of each of the 
 fastq files, I can make certain deductions on them in terms of if the sequences look to 
 be of sufficient quality, if there were any samples that were significantly worse than the 
 other or if there were any that were different in some sort of obvious way. 

 According to the QC checks, in looking at the basic statistics of the 20 files that were 
 being analyzed, most things were basically the same between them. Specifically, encoding was
 done with Sanger/Illumina 1.9, the % of GC fell around 50, and the sequence lenghts were 
 all found to be within 150-280. Along with this, throughout the 19 files, there were 0 
 sequences in all of them that were flagged as poor quality. With this information, we can 
 conclude that all of the results are accurate and there were no specific sequences that we 
 have to look out for in terms of skewed results. However, one thing that was found to be
 different between the files, though, were the total sequence numbers that were looked at.
 While some files contained 400-500 sequences, there were some who contained 600-800 sequences,
 some who only had as little as 250 and some who had as many as 1000 sequences.
 The difference in the length of the sequences analyzed throughout the 20 files could have skewed
 the overall results because some files may have revealed more information than others. 
 Other than sequence length and sequence length distribution, the FastQC reports were generally 
 the same between the files. The only other thing to note would be that each of the files have
 their own individual overrepresented sequences that are seen in different percentages. For 
 example, while ERR1942280 has 339 counts of an overrepresented sequence that takes up 84% of 
 its overall sequence, ERR1942281 has 61 counts of another overrepresented sequence that takes 
 up only 14.5% of its overall sequence. 

## Analysis of BLAST Results 

 Using BLAST, I was also able to analyze the data found in the 20 files. In looking at the top 5 
 most abundant species of bacteria found in all of the results, almost all of the files
 contained "bacterium" in these results. Very broad, the result of bacterium suggests that
 this could have been a species that did not have a specific name, or it could have also been
 a group of species that did not have a specific differentiation from the others. With this,
 the bacterium species in one set of data could be very different from the bacterium sepcies
 in the other sets of data. Another very common species found, was *Staphylococcus succinus*,
 which is the most abundant skin-colonizing bacteria that is also responsible for painful skin
 infections. In comparing the types of bacteria found on male palms compared to female palms, 
 I was able to come to the conclusion that female palms contain more variability and diversity 
 in the species of bacteria found. Specifically, while female palms revealed different species 
 in each set of data, with no similarities besides the broad "bacterium", male palms showed 
 many similarities. Specifically, many of the male palms studied contained *Solemya 
 pervenicosa gill symbiont*, *Staphylococcus succinus*, *Aquitalea sp.*, *Cardiobacterium sp. 
 feline oral taxon 346.*, etc. In looking at the computer mice that were observed, the species
 of bacteria found were similar to the species that were found on the male palms (*Staphylococcus 
 succinus*, *Aquitalea sp.*, *Solemya pervenicosa gill symbiont*). According to studies done, similar to 
 what is found on human skin, Staphylococcus bacteria is the second most common found bacteria on 
 computer mice and keyboards. In studying the bacteria within the contact between human palms and 
 computer mice, it makes sense that *Staphylococcus succinus* is prevalent. 

## Conclusion
 
In analyzing 20 files using FastQC, that give us information about the types of bacteria that is found 
 on female and male palms and computer mice, I was able to conclude that in summary, the files were 
 basically very similar to each other. However, the sequence lengths and sequence length distributions,
 because they were of variable sizes, could have possibly skewed the data. In analyzing the files
 using BLAST, I came to the conclusion that female palms are home to a diverse group of bacteria species, 
 while male palms have more of a reoccurring pattern in the species. Comparing this data to the computer 
 mice, it made sense that the palms and the mice both contained a prevalent amount of *Staphylococcus 
 succinus*, as it is the most abundant skin-colonizing bateria and the second most common bacteria found
 on computer keyboards and mice. 
