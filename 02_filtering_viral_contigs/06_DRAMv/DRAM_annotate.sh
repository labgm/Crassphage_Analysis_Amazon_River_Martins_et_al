#!/bin/bash

sequences='/MP_Data/rommel/sectet/montagens/viral_analysis/checkv_results'
dram='/MP_Data/rommel/sectet/montagens/viral_analysis/DRAM_results'

for file in `seq 1 4`
	do
	DRAM-v.py annotate -i ${sequences}/IT${file}_filt_095/MP${file}_final_filtered_checkv.fa -o ${dram}/IT${file} --skip_trnascan --threads 60 --min_contig_size 1000
	done

