#!/bin/bash
#SBATCH -c 16
#SBATCH --mem=32G
#SBATCH -t 4:20:00
#SBATCH -p priority
#SBATCH -o pipeline_GT_job_%A.out

echo 'inputfq =' $1
echo 'outdir =' $2
echo 'sample =' $3
echo 'trans_ref =' $4
echo 'genome_ref =' $5

python ~/poreranger/pipeline.py --c 16 --i $1 --o $2 --e $3 --s --m 5p10XGEX --t $4 --g $5
#~/refs/CAR.fa
#--g ~/refs/GRCh38.primary_assembly.genome.fa.gz 
#--g ~/refs/chr2.fasta.gz
