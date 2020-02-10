#Use an official Ubuntu runtime as a parent image
FROM biohaz/basic_ubuntu

#MAINTAINER ConYel <https://github.com/ConYel>

# Set the working directory to /home
WORKDIR /home

RUN apt-get update -y \
  && wget https://www.smallrnagroup.uni-mainz.de/software/proTRAC_2.4.4.pl \
  && wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_33/gencode.v33.primary_assembly.annotation.gtf.gz \
  && wget http://www.repeatmasker.org/genomes/hg38/RepeatMasker-rm406-dfam2.0/hg38.fa.out.gz \
  && gunzip gencode.v33.primary_assembly.annotation.gtf.gz \
  && gunzip hg38.fa.out.gz  
  
