# command07.sh
# 1. Download [paired-end sequencing](https://www.biostars.org/p/267167/) reads as SRR13668359_1.fastq.gz
#    and SRR13668359_2.fastq.gz in the data directory (No result file)
#    - Link for Read 1: ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR136/059/SRR13668359/SRR13668359_1.fastq.gz
#    - Link for Read 2: ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR136/059/SRR13668359/SRR13668359_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR136/059/SRR13668359/SRR13668359_1.fastq.gz -O data/SRR13668359_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR136/059/SRR13668359/SRR13668359_2.fastq.gz -O data/SRR13668359_2.fastq.gz

# 2. Download GTF file of SARS-Cov-2 and unzip it as sars_cov_2.genes.gtf in the data directory. (No result file)
#    - Link: ftp://ftp.ensemblgenomes.org/pub/viruses/gtf/sars_cov_2/Sars_cov_2.ASM985889v3.101.gtf.gz

wget ftp://ftp.ensemblgenomes.org/pub/viruses/gtf/sars_cov_2/Sars_cov_2.ASM985889v3.101.gtf.gz -O data/sars_cov_2.genes.gtf

