#!/bin/bash

cd /Users/danasokol/Desktop/9.2

fastqc ERR14230582_Illumina_HiSeq_4000_sequencing.fastq.gz
fastqc ERR14230586_Illumina_HiSeq_4000_sequencing.fastq.gz
fastqc ERR14230595_Illumina_HiSeq_4000_sequencingz
fastqc ERR14230607_Illumina_HiSeq_4000_sequencing.fastq.gz

multiqc .

