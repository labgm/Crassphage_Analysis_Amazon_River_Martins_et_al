dir_headers='/MP_Data/rommel/sectet/montagens/viral_analysis/vs2_dvf_filtered/headers_095'
dir_contigs='/MP_Data/rommel/sectet/montagens/viral_analysis/vs2_dvf_filtered/contigs'
filtered='/MP_Data/rommel/sectet/montagens/viral_analysis/vs2_dvf_filtered/contigs_095'

for f in `seq 1 4`
	do 
	python ../filter_viral_contigs.py ${dir_contigs}/IT${f}_filtered_viral_contigs.fa ${dir_headers}/IT${f}_filtered_headers_095.txt ${filtered}/IT${f}_filtered_viral_contigs.fa
	echo 'MP${f} done'
	done

