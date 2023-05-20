## command05.sh
# 1. Count genes of each chromosome in "d_melanogaster.genes.gtf" and find the chromosomes which have 100 or more genes.
#    Sort chromosome names alphabetically and write the chromosome names as column 1 and
#    the count of genes as column 2 to result05_1.csv

cat /dev/null > result/result05_1.csv
grep -v '^#' data/d_melanogaster.genes.gtf | cut -f1 | sort -u | while read CHR; do grep -v '^#' data/d_melanogaster.genes.gtf | awk -v chr="$CHR" '$1 == chr && $3 == "gene" { print }' | wc -l | awk -v chr="$CHR" -v OFS=',' '$1 >= 100 { print chr,$1 }' | tee -a result/result05_1.csv; done

# 2.  Extract the distinct genomic feature types (e.g., gene, exon, transcript ...) from the GTF file.
#     Sort the values alphabetically and save them to result05_2.txt

grep -v '^#' data/d_melanogaster.genes.gtf | cut -f3 | sort -u | tee result/result05_2.txt

