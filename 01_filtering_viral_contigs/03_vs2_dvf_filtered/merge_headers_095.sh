vs2_headers='/MP_Data/rommel/sectet/montagens/viral_analysis/virsorter_results/viral_headers_095'
dvf_headers='/MP_Data/rommel/sectet/montagens/viral_analysis/dvf_results/dvf_headers_095'
merged='/MP_Data/rommel/sectet/montagens/viral_analysis/vs2_dvf_filtered'

for sample in `seq 1 5`
		do
		cp ${vs2_headers}/MP${sample}_vs2_viral_contig_header_095.txt ${merged}/MP${sample}_vs2_viral_contig_header_095.txt
		cp ${dvf_headers}/MP${sample}_dvf_headers.txt ${merged}/MP${sample}_dvf_headers_095.txt
		cat ${merged}/MP${sample}_vs2_viral_contig_header_095.txt ${merged}/MP${sample}_dvf_headers_095.txt >> ${merged}/MP${sample}_merged_headers_095.txt
		grep 'k87' ${merged}/MP${sample}_merged_headers_095.txt | sort | uniq >> ${merged}/MP${sample}_filtered_headers_095.txt
		done
