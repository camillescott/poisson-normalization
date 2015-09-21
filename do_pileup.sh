READS=$1
REF=$2

bwa mem $REF $READS | samtools view -b > $READS.x.$REF.bam
samtools sort -T $READS.tmp $READS.x.$REF.bam | samtools mpileup > $READS.x.$REF.pu
rm $READS.x.$REF.bam

