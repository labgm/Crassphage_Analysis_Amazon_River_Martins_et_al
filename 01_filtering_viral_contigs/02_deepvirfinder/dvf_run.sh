#!/bin/bash

dir_samples = '/MP_Data/rommel/sectet/montagens'
dfv_results = '/MP_Data/rommel/sectet/montagens/viral_analysis/dfv_results'

for sample in ${dir_samples}/*.contigs.fa
	do
	python /MP_Data/DeepVirFinder/dvf.py -i ${sample} -o ${dfv_results} -l 500 -c 40
	done
