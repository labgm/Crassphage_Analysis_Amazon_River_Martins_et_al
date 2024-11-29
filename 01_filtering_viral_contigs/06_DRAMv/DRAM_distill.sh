#!/bin/bash

dram='/MP_Data/rommel/sectet/montagens/viral_analysis/DRAM_results'

for file in `seq 1 4`
	do	
	DRAM-v.py distill -i IT${file}_vs2/annotations.tsv -o IT${file}_vs2/dramv-distill
	done
