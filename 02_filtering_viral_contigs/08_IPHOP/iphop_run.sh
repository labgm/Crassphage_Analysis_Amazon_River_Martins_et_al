#!/bin/bash

viral_seqs='/MP_Data/rommel/sectet/montagens/viral_analysis/final_filtered'
iphop_db='/MP_Data/database/iphopDB/Aug_2023_pub_rw'
output='/MP_Data/rommel/sectet/montagens/viral_analysis/iphop'

for i in `seq 1 5`
	do
	iphop predict --fa_file ${viral_seqs}/MP${i}_filtered_dram.fa --db_dir $iphop_db --out_dir ${output}/MP${i}_host_pred --num_threads 30
	done

