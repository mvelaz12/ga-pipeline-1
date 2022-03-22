#load fastqc module
module add fastqc/0.11.7

#sets outputs and inputs
OUTDIR=results/fastqc_untrimmed_reads
INPUT=data/untrimmed_fastq/.*fastq.gz

#creates output director if needed
mkdir -p $OUTDIR

#run fastqc
fastqc -o $OURDIR $INPUT 


mv *.zip results/fastqc_untrimmed_reads/
mv *.html results/fastqc_untrimmed_reads/
