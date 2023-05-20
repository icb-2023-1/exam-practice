# command03.sh
# 1. Identify the motif of EcoRI by searching online, print the number of motifs in the fasta file and save the number to result03_1.txt

# EcoRI motif = GAATTC
grep -v '>' data/NC_045512.2.fasta | grep -o 'GAATTC' | wc -l | tee result/result03_1.txt

# 2. Print the number of HincII recognition sites in the fasta file and save the number to result03_2.txt
grep -v '>' data/NC_045512.2.fasta | grep -oE 'GT(T|C)(A|G)AC' | wc -l | tee result/result03_2.txt

# 3. Print the number of bases (A, T, G, C) in the fasta file and fill in the numbers of result03_3.csv
echo "A,$(grep -v '>' data/NC_045512.2.fasta | grep -o 'A' | wc -l)" | tee result/result03_3.csv
echo "T,$(grep -v '>' data/NC_045512.2.fasta | grep -o 'T' | wc -l)" | tee -a result/result03_3.csv
echo "G,$(grep -v '>' data/NC_045512.2.fasta | grep -o 'G' | wc -l)" | tee -a result/result03_3.csv
echo "C,$(grep -v '>' data/NC_045512.2.fasta | grep -o 'C' | wc -l)" | tee -a result/result03_3.csv

