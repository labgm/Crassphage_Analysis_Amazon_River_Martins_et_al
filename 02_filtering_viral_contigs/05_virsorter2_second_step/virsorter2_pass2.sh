#!/bin/bash

#IT1
virsorter run --keep-original-seq --seqname-suffix-off --viral-gene-enrich-off --provirus-off --prep-for-dramv -i ${viral_seqs}/IT1_filtered_dram.fa -w IT1-vs2-pass2 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 1000 --min-score 0.5 -j 50 all

#IT2
virsorter run --keep-original-seq --seqname-suffix-off --viral-gene-enrich-off --provirus-off --prep-for-dramv -i ${viral_seqs}/IT2_filtered_dram.fa -w IT2-vs2-pass2 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 1000 --min-score 0.5 -j 50 all

#IT3
virsorter run --keep-original-seq --seqname-suffix-off --viral-gene-enrich-off --provirus-off --prep-for-dramv -i ${viral_seqs}/IT3_filtered_dram.fa -w IT3-vs2-pass2 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 1000 --min-score 0.5 -j 50 all

#IT4
virsorter run --keep-original-seq --seqname-suffix-off --viral-gene-enrich-off --provirus-off --prep-for-dramv -i ${viral_seqs}/IT4_filtered_dram.fa -w IT4-vs2-pass2 --include-groups dsDNAphage,ssDNA,NCLDV,lavidaviridae --min-length 1000 --min-score 0.5 -j 50 all
