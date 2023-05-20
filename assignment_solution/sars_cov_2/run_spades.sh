set -e
true
true
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K21/configs/config.info
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K33/configs/config.info
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K55/configs/config.info
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K77/configs/config.info
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K99/configs/config.info
/usr/local/bin/spades-core /home/exercise03/exercise03/sars_cov_2/K127/configs/config.info
/usr/local/bin/python /usr/local/share/spades/spades_pipeline/scripts/copy_files.py /home/exercise03/exercise03/sars_cov_2/K127/before_rr.fasta /home/exercise03/exercise03/sars_cov_2/before_rr.fasta /home/exercise03/exercise03/sars_cov_2/K127/assembly_graph_after_simplification.gfa /home/exercise03/exercise03/sars_cov_2/assembly_graph_after_simplification.gfa /home/exercise03/exercise03/sars_cov_2/K127/final_contigs.fasta /home/exercise03/exercise03/sars_cov_2/contigs.fasta /home/exercise03/exercise03/sars_cov_2/K127/first_pe_contigs.fasta /home/exercise03/exercise03/sars_cov_2/first_pe_contigs.fasta /home/exercise03/exercise03/sars_cov_2/K127/strain_graph.gfa /home/exercise03/exercise03/sars_cov_2/strain_graph.gfa /home/exercise03/exercise03/sars_cov_2/K127/scaffolds.fasta /home/exercise03/exercise03/sars_cov_2/scaffolds.fasta /home/exercise03/exercise03/sars_cov_2/K127/scaffolds.paths /home/exercise03/exercise03/sars_cov_2/scaffolds.paths /home/exercise03/exercise03/sars_cov_2/K127/assembly_graph_with_scaffolds.gfa /home/exercise03/exercise03/sars_cov_2/assembly_graph_with_scaffolds.gfa /home/exercise03/exercise03/sars_cov_2/K127/assembly_graph.fastg /home/exercise03/exercise03/sars_cov_2/assembly_graph.fastg /home/exercise03/exercise03/sars_cov_2/K127/final_contigs.paths /home/exercise03/exercise03/sars_cov_2/contigs.paths
true
/usr/local/bin/python /usr/local/share/spades/spades_pipeline/scripts/breaking_scaffolds_script.py --result_scaffolds_filename /home/exercise03/exercise03/sars_cov_2/scaffolds.fasta --misc_dir /home/exercise03/exercise03/sars_cov_2/misc --threshold_for_breaking_scaffolds 3
true
