# command06.sh
# 1.

grep -v '^#' data/d_melanogaster.genes.gtf | awk '$3 == "gene"' | grep "gene_name \"Raf\"" | tee result/result06_1.txt

# 2.

cat /dev/null > result/result06_2.txt
grep -v '^#' data/d_melanogaster.genes.gtf | grep "gene_name \"Raf\"" | grep -oE "transcript_name.*" | cut -d\" -f2 | tee -a result/result06_2.txt

# 3.

cat /dev/null > result/result06_3.csv
grep -v '^#' data/d_melanogaster.genes.gtf | grep "gene_name \"Raf\"" | grep -oE "transcript_name.*" | cut -d\" -f2 | sort -u | while read TRX; do echo "$TRX,$(grep -v '^#' data/d_melanogaster.genes.gtf | grep "gene_name \"Raf\"" | awk '$3 == "exon"' | grep $TRX | wc -l)" | tee -a result/result06_3.csv; done

# 4.

cat /dev/null > result/result06_4.csv
grep -v '^#' data/d_melanogaster.genes.gtf | grep "gene_name \"Raf\"" | grep -oE "transcript_name.*" | cut -d\" -f2 | sort -u | while read TRX; do echo "$TRX,$(grep -v '^#' data/d_melanogaster.genes.gtf | grep "gene_name \"Raf\"" | awk '$3 == "exon"' | grep $TRX | awk '{sum+=$5-$4+1} END {print sum}')" | tee -a result/result06_4.csv; done

