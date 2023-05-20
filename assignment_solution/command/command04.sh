# command04.sh
# 1. Download the GTF file of Drosophila melanogaster and save it as d_melanogaster.genes.gtf.gz in the "data" directory. (No result file)
#    Link: ftp://ftp.ensembl.org/pub/release-103/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.32.103.gtf.gz

wget ftp://ftp.ensembl.org/pub/release-103/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.32.103.gtf.gz -O data/d_melanogaster.genes.gtf.gz

# 2. Extract the gzip-compressed GTF file. (No result file)

gzip -df data/d_melanogaster.genes.gtf.gz

# 3. The first few lines of GTF file begin with "#". These lines are called header lines.
#    Use a command to extract only the header line from a GTF file and store the result to result04_3.txt in the "result" directory.

grep -E '^#' data/d_melanogaster.genes.gtf | tee result/result04_3.txt

