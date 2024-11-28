#!/bin/bash

viruses='/MP_Data/rommel/sectet/montagens/viral_analysis/final_filtered'
genomad_output='/MP_Data/rommel/sectet/montagens/viral_analysis/genomad'

for s in `seq 1 4`
	do
	genomad end-to-end --cleanup ${viruses}/IT${s}_filtered_dram.fa $genomad_output /MP_Data/database/genomad_db --threads 50
	done

