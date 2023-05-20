# command09.sh
# 1. Generate snp report for **scaffolds.fasta** and save the snp report as
#    sars_cov_2.snps in the result directory. (Result file: sars_cov_2.snps)
#    - INPUT: `NC_045512.2.fasta`, `scaffolds.fasta`
#    - OUTPUT: `sars_cov_2.snps`

nucmer data/NC_045512.2.fasta sars_cov_2/scaffolds.fasta
mv out.delta data/out.delta
show-snps data/out.delta > result/sars_cov_2.snps

# 2. Find out the shared SNPs between the Nextstrain clades and sars_cov_2.snps.
#    You can use either join.awk, or "join" command to find if two files have identical join fields.
#    With the SNPs, find the clade which shares most SNPs with sars_cov_2.snps
#    and save the name of clade to clade-name.txt in the result directory. (Result file: clade-name.txt)
#    - INPUT: `sars_cov_2.snps`, `./data/clade/*.txt`
#    - OUTPUT: `clade_name.txt`

cat /dev/null > data/clade_join.csv
ls data/clade | while read CL; do echo "$(echo $CL | cut -d. -f1),$(./join.awk result/sars_cov_2.snps data/clade/$CL | wc -l),$(($(cat data/clade/$CL | wc -l)-$(./join.awk result/sars_cov_2.snps data/clade/$CL | wc -l)))" >> data/clade_join.csv; done
sort -t, -k2r,2 -k3,3 data/clade_join.csv | head -1 | cut -d, -f1 > result/clade_name.txt

