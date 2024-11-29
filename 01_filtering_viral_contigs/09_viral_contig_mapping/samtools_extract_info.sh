#View===================================================================================================
#IT1
samtools view -Sb IT1_A_vs_marabacontigs.sam >> IT1_A_vs_marabacontigs.bam
samtools view -Sb IT1_B_vs_marabacontigs.sam >> IT1_B_vs_marabacontigs.bam
samtools view -Sb IT1_C_vs_marabacontigs.sam >> IT1_C_vs_marabacontigs.bam
#IT2
samtools view -Sb IT2_A_vs_marabacontigs.sam >> IT2_A_vs_marabacontigs.bam
samtools view -Sb IT2_B_vs_marabacontigs.sam >> IT2_B_vs_marabacontigs.bam
samtools view -Sb IT2_C_vs_marabacontigs.sam >> IT2_C_vs_marabacontigs.bam
#IT3
samtools view -Sb IT3_A_vs_marabacontigs.sam >> IT3_A_vs_marabacontigs.bam
samtools view -Sb IT3_B_vs_marabacontigs.sam >> IT3_B_vs_marabacontigs.bam
samtools view -Sb IT3_C_vs_marabacontigs.sam >> IT3_C_vs_marabacontigs.bam
#IT4
samtools view -Sb IT4_A_vs_marabacontigs.sam >> IT4_A_vs_marabacontigs.bam
samtools view -Sb IT4_B_vs_marabacontigs.sam >> IT4_B_vs_marabacontigs.bam
samtools view -Sb IT4_C_vs_marabacontigs.sam >> IT4_C_vs_marabacontigs.bam

#Sort===================================================================================================
# IT1
samtools sort -o IT1_A_vs_marabacontigs_sorted.bam IT1_A_vs_marabacontigs.bam
samtools sort -o IT1_B_vs_marabacontigs_sorted.bam IT1_B_vs_marabacontigs.bam
samtools sort -o IT1_C_vs_marabacontigs_sorted.bam IT1_C_vs_marabacontigs.bam

# IT2
samtools sort -o IT2_A_vs_marabacontigs_sorted.bam IT2_A_vs_marabacontigs.bam
samtools sort -o IT2_B_vs_marabacontigs_sorted.bam IT2_B_vs_marabacontigs.bam
samtools sort -o IT2_C_vs_marabacontigs_sorted.bam IT2_C_vs_marabacontigs.bam

# IT3
samtools sort -o IT3_A_vs_marabacontigs_sorted.bam IT3_A_vs_marabacontigs.bam
samtools sort -o IT3_B_vs_marabacontigs_sorted.bam IT3_B_vs_marabacontigs.bam
samtools sort -o IT3_C_vs_marabacontigs_sorted.bam IT3_C_vs_marabacontigs.bam

# IT4
samtools sort -o IT4_A_vs_marabacontigs_sorted.bam IT4_A_vs_marabacontigs.bam
samtools sort -o IT4_B_vs_marabacontigs_sorted.bam IT4_B_vs_marabacontigs.bam
samtools sort -o IT4_C_vs_marabacontigs_sorted.bam IT4_C_vs_marabacontigs.bam

#Index===================================================================================================
# IT1
samtools index IT1_A_vs_marabacontigs_sorted.bam
samtools index IT1_B_vs_marabacontigs_sorted.bam
samtools index IT1_C_vs_marabacontigs_sorted.bam

# IT2
samtools index IT2_A_vs_marabacontigs_sorted.bam
samtools index IT2_B_vs_marabacontigs_sorted.bam
samtools index IT2_C_vs_marabacontigs_sorted.bam

# IT3
samtools index IT3_A_vs_marabacontigs_sorted.bam
samtools index IT3_B_vs_marabacontigs_sorted.bam
samtools index IT3_C_vs_marabacontigs_sorted.bam

# IT4
samtools index IT4_A_vs_marabacontigs_sorted.bam
samtools index IT4_B_vs_marabacontigs_sorted.bam
samtools index IT4_C_vs_marabacontigs_sorted.bam

#idxstats===================================================================================================
# IT1
samtools idxstats IT1_A_vs_marabacontigs_sorted.bam >> IT1_A_vs_marabacontigs_idxstats.txt
samtools idxstats IT1_B_vs_marabacontigs_sorted.bam >> IT1_B_vs_marabacontigs_idxstats.txt
samtools idxstats IT1_C_vs_marabacontigs_sorted.bam >> IT1_C_vs_marabacontigs_idxstats.txt

# IT2
samtools idxstats IT2_A_vs_marabacontigs_sorted.bam >> IT2_A_vs_marabacontigs_idxstats.txt
samtools idxstats IT2_B_vs_marabacontigs_sorted.bam >> IT2_B_vs_marabacontigs_idxstats.txt
samtools idxstats IT2_C_vs_marabacontigs_sorted.bam >> IT2_C_vs_marabacontigs_idxstats.txt

# IT3
samtools idxstats IT3_A_vs_marabacontigs_sorted.bam >> IT3_A_vs_marabacontigs_idxstats.txt
samtools idxstats IT3_B_vs_marabacontigs_sorted.bam >> IT3_B_vs_marabacontigs_idxstats.txt
samtools idxstats IT3_C_vs_marabacontigs_sorted.bam >> IT3_C_vs_marabacontigs_idxstats.txt

# IT4
samtools idxstats IT4_A_vs_marabacontigs_sorted.bam >> IT4_A_vs_marabacontigs_idxstats.txt
samtools idxstats IT4_B_vs_marabacontigs_sorted.bam >> IT4_B_vs_marabacontigs_idxstats.txt
samtools idxstats IT4_C_vs_marabacontigs_sorted.bam >> IT4_C_vs_marabacontigs_idxstats.txt

