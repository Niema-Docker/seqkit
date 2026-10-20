# Minimal Docker image for SeqKit using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install SeqKit
RUN micromamba create -y -n seqkit -c bioconda seqkit==2.14.0 && \
    micromamba clean --all --yes
ENV ENV_NAME=seqkit
