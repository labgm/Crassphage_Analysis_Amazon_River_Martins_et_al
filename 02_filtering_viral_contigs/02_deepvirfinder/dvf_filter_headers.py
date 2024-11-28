import pandas as pd
import os

directory = os.getcwd()

samples = [1,2,3,4]

for s in samples: 
    df = pd.read_csv(f'IT{s}.contigs.fa_gt500bp_dvfpred.txt', sep='\t')
    df = df[df['score'] > 0.95].dropna()
    df[['name','flag','multi','length']] = df.name.str.split(' ', n=4, expand=True)
    df = df['name']
    df.to_csv(f'IT{s}_dvf_headers.txt',index=False, header=False)

