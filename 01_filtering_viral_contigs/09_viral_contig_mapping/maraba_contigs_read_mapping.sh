IT1='/MP_Data/rommel/sectet/raw/maraba/ponto1'
IT2='/MP_Data/rommel/sectet/raw/maraba/ponto2'
IT3='/MP_Data/rommel/sectet/raw/maraba/ponto3'
IT4='/MP_Data/rommel/sectet/raw/maraba/ponto4'

#IT1
bowtie2 -x db/marabacontigs -1 ${IT1}/IT1_A_R1.fastq.gz -2 ${IT1}/IT1_A_R2.fastq.gz -S IT1_A_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT1}/IT1_B_R1.fastq.gz -2 ${IT1}/IT1_B_R2.fastq.gz -S IT1_B_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT1}/IT1_C_R1.fastq.gz -2 ${IT1}/IT1_C_R2.fastq.gz -S IT1_C_vs_marabacontigs.sam --local --no-unal -p 40

#IT2
bowtie2 -x db/marabacontigs -1 ${IT2}/IT2_A_R1.fastq.gz -2 ${IT2}/IT2_A_R2.fastq.gz -S IT2_A_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT2}/IT2_B_R1.fastq.gz -2 ${IT2}/IT2_B_R2.fastq.gz -S IT2_B_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT2}/IT2_C_R1.fastq.gz -2 ${IT2}/IT2_C_R2.fastq.gz -S IT2_C_vs_marabacontigs.sam --local --no-unal -p 40

#IT3
bowtie2 -x db/marabacontigs -1 ${IT3}/IT3_A_R1.fastq.gz -2 ${IT3}/IT3_A_R2.fastq.gz -S IT3_A_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT3}/IT3_B_R1.fastq.gz -2 ${IT3}/IT3_B_R2.fastq.gz -S IT3_B_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT3}/IT3_C_R1.fastq.gz -2 ${IT3}/IT3_C_R2.fastq.gz -S IT3_C_vs_marabacontigs.sam --local --no-unal -p 40

#IT4
bowtie2 -x db/marabacontigs -1 ${IT4}/IT4_A_R1.fastq.gz -2 ${IT4}/IT4_A_R2.fastq.gz -S IT4_A_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT4}/IT4_B_R1.fastq.gz -2 ${IT4}/IT4_B_R2.fastq.gz -S IT4_B_vs_marabacontigs.sam --local --no-unal -p 40
bowtie2 -x db/marabacontigs -1 ${IT4}/IT4_C_R1.fastq.gz -2 ${IT4}/IT4_C_R2.fastq.gz -S IT4_C_vs_marabacontigs.sam --local --no-unal -p 40

