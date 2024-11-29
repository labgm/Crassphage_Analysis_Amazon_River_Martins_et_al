#!/bin/bash

for s in `seq 1 5`
	do
	cat IT${s}_filt_095/viruses.fna IT${s}_filt_095/proviruses.fna >> IT${s}_filt_095/combined.fna
	done

