# Crassphage_Analysis_Amazon_River_Martins_et_al

Repository to accompany "CrAssphage distribution analysis in an Amazon River based on metagenomic sequencing data and georeferencing", Martins, et al 2024. This code provides the scripts necessary to replicate the analyses described in the paper.

## 01_Read Based Analysis
- kraken_run.sh - Script to run Kraken and taxonomically identify reads<br/>
- The results were then sugmitted to Pavian: https://fbreitwieser.shinyapps.io/pavian/

## 02_filtering_viral_contigs

- Pipeline used for viral sequence filtration, annotation and quantification
- The scripts are shown in order of execution

### virsorter2_first_step
- virsorter_run.sh - Bash loop to run virsorter2
- vs2_contig_headers_extract.sh - Script to extract contig headers with score > 0.95

### deepvirfinder
- dvf_run.sh - Bash loop to run deepvirfinder
- dvf_filter_headers.py - Script to extract contig headers with score > 0.95

### vs2_dvf_filtered
- merge_headers_095.sh - Script to merge sequences classified with score > 0.95 by virsorter2 and deepvirfinder 
- filter_viral_contigs.py - Script to filter the contigs with score > 0.95 by virsorter2 and deepvirfinder 
- loop_filter_contigs.sh - Loop to execute the previous script

### checkv
- checkv_run.sh - Bash loop to run checkV c
- combine_results.sh - Script to combine the sequences classified as linear viruses and sequences classified as proviruses 
- filter_viral_contigs_checkv.py - Script to perform the first filtering step as described in the article

### virsorter2_second_step
- virsorter2_pass2.sh - Bash loop to run virsorter 2 (It is necessary to run DRAM_distill)

### DRAMv
- DRAM_annotate.sh - Bash loop to run DRAM_annotate 
- DRAM_filter.py - Script to perform the second filtering step as described in the article 
- DRAM_distill.sh - Bash loop to run DRAM_distill

### geNomad
- genomad_run.sh - Bash loop to run geNomad

### IPHOP
- iphop_run.sh - Bash loop to run Iphop

### viral_contig_mapping
- maraba_contigs_read_mapping.sh - Script to perform bowtie2 read mapping 
- samtools_extract_info.sh - Script to extract the sam files read mapping information

## 03_Processing_mapping_data
- process_mapping_data.ipynb - Set of scripts to merge samples, normalize data, get viral taxonomies, plot clustermap and correlations with crassphage correlations and environmental data
- viral_tax_percentages.tsv - Viral taxonomies
- itac_contigs_raw_reads.tsv - contig mapping data with raw reads
- env_data.tsv - Calculated enviromental data transformed to log
- crass_signifficant_correlations.tsv - Calculated crassphage spearman correlations with environmental data

## 04_diversity_analysis
- viral_alpha_n_betadiv_steps.Rmd - Set of scripts to calculate alpha and beta diversity indexes and to perform respective statistical analysis
- viral_alpha_n_betadiv_steps.html
- plot_alpha.py - Plot alfa diversity boxplots
## 05_annotation_processing
- annot_process.ipynb - set of scripts to extract the crassphage annotations, verufy shared genes between the sample locations and to extract crassphage host taxonomies
- annot_process.html
