#Use an official Ubuntu runtime as a parent image
FROM biohaz/basic_ubuntu

#MAINTAINER ConYel <https://github.com/ConYel>

# Set the working directory to /home
WORKDIR /home

RUN apt-get update -y \
  && wget https://www.smallrnagroup.uni-mainz.de/software/proTRAC_2.4.4.pl
