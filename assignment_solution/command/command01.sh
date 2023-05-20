# command01.sh
# 1. Print your student number and github ID and copy the printed result to student_id.txt.

echo "2019-20996,endix1029" | tee result/student_id.txt

# 2. Download the fasta file with NCBI accession. The downloaded file should be named as "NC_045512.2.fasta"
#    - NCBI accession number: NC_045512.2
#    - Download link:
#        - https://www.ncbi.nlm.nih.gov/search/api/sequence/NC_045512.2/?report=fasta

wget "https://www.ncbi.nlm.nih.gov/search/api/download-sequence/?db=nuccore&id=NC_045512.2" -O data/NC_045512.2.fasta
