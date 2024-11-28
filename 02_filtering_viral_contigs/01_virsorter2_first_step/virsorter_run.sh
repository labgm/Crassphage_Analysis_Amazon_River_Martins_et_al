#!/bin/bash

virsorter run --keep-original-seq -i /MP_Data/rommel/sectet/montagens/IT1.contigs.fa -w /MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results/IT1_vs2-pass1 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 5000 --min-score 0.5 -j 40 all

virsorter run --keep-original-seq -i /MP_Data/rommel/sectet/montagens/IT2.contigs.fa -w /MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results/IT2_vs2-pass1 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 5000 --min-score 0.5 -j 40 all

virsorter run --keep-original-seq -i /MP_Data/rommel/sectet/montagens/IT3.contigs.fa -w /MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results/IT3_vs2-pass1 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 5000 --min-score 0.5 -j 40 all

virsorter run --keep-original-seq -i /MP_Data/rommel/sectet/montagens/IT4.contigs.fa -w /MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results/IT4_vs2-pass1 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 5000 --min-score 0.5 -j 40 all
