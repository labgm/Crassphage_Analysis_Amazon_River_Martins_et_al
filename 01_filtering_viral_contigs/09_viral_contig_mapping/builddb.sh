#Combining the total contigs from all samples
cat IT1.contigs.fa IT2.contigs.fa IT3.contigs.fa IT4.contigs.fa >> marabacontigs.fasta

#Building the DB
bowtie2-build -f marabacontigs.fasta marabacontigs --large-index --threads 30
