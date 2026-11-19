#!/bin/sh
#SBATCH --time=36:00:00
#SBATCH --mem-per-cpu=64G
#SBATCH --cpus-per-task=6
#SBATCH --mail-user=damian.hernandez@utoronto.ca
#SBATCH --mail-type=ALL
#SBATCH --output=00_DataCollection.out

module load r/4.6.1

Rscript -e "rmarkdown::render('00_DataCollection.Rmd')"

