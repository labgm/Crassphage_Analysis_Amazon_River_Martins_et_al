import pandas as pd
import os

suspicious = ['carbohydrate kinase','carbohydrate-kinase','glycosyltransferase',
                'glycosyl transferase','glycosyl transferaseendonuclease','nucleotide sugar epimerase',
                'nucleotide sugar-epimerase','nucleotide-sugar epimerase','nucleotide-sugar-epimerase',
                'nucleotidyltransferase','nucleotidyl transferase','nucleotidyl-transferase', 
                'plasmid stability','endonuclease','ABC transporter','CRISPR Cas','Sporulation',
                'Two-component system','Secretion system']    

def changeName(s):
    new_name = s.split('_')
    new_name ='_'.join(new_name[0:2])
    return new_name

def findSuspicious(gene_name):
    if isinstance(gene_name, str):  # Check if the gene_name is a string
        for substring in suspicious:
            if substring in gene_name:
                return True
    return False    

dir = os.getcwd()
sample=range(1,6)

for s in sample:
    os.chdir(f'IT{s}')

    df = pd.read_csv('annotations.tsv', sep='\t')
    df = df.rename(columns={'Unnamed: 0':'contig_id'})

    df['is_suspicious'] = df['viral_hit'].apply(findSuspicious)
    df['contig_id'] = df['contig_id'].apply(changeName)
    df = df[df['viral_hit'].notna()]

    #Set df1
    df1 = df['contig_id']
    df1 = df1.value_counts().rename_axis('contig_id').reset_index(name='gene_counts')
    #df1 = df1[df1['gene_counts'] > 3]


    df2 = df[['contig_id','is_suspicious']]
    df2 = df2[df2['is_suspicious'] == True].dropna()
    df2 = df2.groupby(['contig_id', 'is_suspicious']).size().reset_index(name='sus_count')

    result = pd.merge(df1, df2, how='outer',on='contig_id')
    result= result[['contig_id','gene_counts', 'sus_count']]
    #result.to_csv('suspicious.tsv',index=False)
    to_remove= result[(result['sus_count'] * 2) >= result['gene_counts']]
    #to_remove = to_remove['contig_id']
    #print(to_remove)
    final = result[~result['contig_id'].isin(to_remove['contig_id'])]
    final = final[final['gene_counts'] >= 3]
    final = final['contig_id']

    os.chdir('..')
