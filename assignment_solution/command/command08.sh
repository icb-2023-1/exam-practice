# command08.sh
# 1. Assemble downloaded sequence reads with SPAdes.
#    - INPUT: `SRR13668359_1.fastq.gz`, `SRR13668359_2.fastq.gz`
#    - OUTPUT DIRECTORY: `./sars_cov_2`

spades.py -1 data/SRR13668359_1.fastq.gz -2 data/SRR13668359_2.fastq.gz -o ./sars_cov_2 --only-assembler

# 2. Align the reference genome and scaffolds assembled with SPAdes with MUMMER.
#    Save the output of MUMMER as sars_cov_2.mums in result directory. (Result files: sars_cov_2.mums)
#    - INPUT: `NC_045512.2.fasta`, `scaffolds.fasta`
#    - OUTPUT: `sars_cov_2.mums`

mummer data/NC_045512.2.fasta sars_cov_2/scaffolds.fasta > result/sars_cov_2.mums

# 3. Visualize the alignment result with mummerplot.
#    Save the output plot as sars_cov_2.png in the result directory. (Result files: sars_cov_2.png)
#    - INPUT: `sars_cov_2.mums`, `NC_045512.2.fasta`, `scaffolds.fasta`
#    - OUTPUT: `sars_cov_2.png`

mummerplot --png -R data/NC_045512.2.fasta -Q sars_cov_2/scaffolds.fasta result/sars_cov_2.mums
cp out.png result/sars_cov_2.png
rm out.png out.gp out.rplot out.fplot

