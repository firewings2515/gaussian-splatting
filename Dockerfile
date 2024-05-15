# Use nvidia/cuda image
FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel
ARG DEBIAN_FRONTEND=noninteractive
# set bash as current shell
RUN chsh -s /bin/bash
SHELL ["/bin/bash", "-c"]

# install anaconda
RUN apt-get update
RUN apt-get install -y wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 git mercurial subversion && \
        apt-get clean


# set path to conda
ENV PATH /opt/conda/bin:$PATH
