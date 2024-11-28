#!/bin/bash

for dir in ponto1 ponto2 ponto3 ponto4 
		do
		for letter in A B C
			do
			prefix=`basename *${letter}_R1.fastq.gz R1.fastq.gz`
			kraken2 --db /MP_Data/database/kraken2/last_release --paired /MP_Data/rommel/sectet/raw/${city}/${dir}/*${letter}_R1.fastq.gz /MP_Data/rommel/sectet/raw/${city}/${dir}/*${letter}_R2.fastq.gz --report /MP_Data/rommel/sectet/kraken/kraken_megares_results/${city}/${dir}/kraken_results/${prefix}report.txt --threads 50
			done
		done
