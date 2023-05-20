# command02.sh
# 1. Print first 5 lines of the downloaded fasta file and copy the printed result to result02_1.txt

head -5 data/NC_045512.2.fasta | tee result/result02_1.txt

# 2. How many lines are in this fasta file except for the header line? (The header lines start with ">".)
#    Print the number of lines except header lines and save the number to result02_2.txt

grep -v '>' data/NC_045512.2.fasta | wc -l | tee result/result02_2.txt

# 3. How many lines of this fasta file contain "AAAAA"?
#    Print the number of lines with "AAAAA" and save the number to result02_3.txt

grep 'AAAAA' data/NC_045512.2.fasta | wc -l | tee result/result02_3.txt

# 4. From the fasta file, print the first 5 lines containing "GGTTC" and
#    copy the printed result to result02_4.txt

grep 'GGTTC' data/NC_045512.2.fasta | head -5 | tee result/result02_4.txt
