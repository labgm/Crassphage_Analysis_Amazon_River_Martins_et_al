#!/bin/bash

vs2_dir='/MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results'

for sample in 1 2 3 4 
	do
	awk -F'\t' 'NR > 1 && $6 > 0.95 {split($1, parts, "\\|\\|"); print parts[1]}' ${vs2_dir}/IT${sample}_vs2-pass1/final-viral-score.tsv >> IT${sample}_vs2_viral_contig_header_095.txt
	done

