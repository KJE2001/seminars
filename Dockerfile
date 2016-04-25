FROM andrewosh/binder-base

MAINTAINER Roberto Di Remigio  <roberto.d.remigio@uit.no>

USER root

RUN conda create -n py35 python=3.5
RUN source activate py35
RUN conda install notebook ipykernel
RUN /bin/bash -c "source activate py35 && ipython kernel install --user"
# Install chemlab, chemview and cclib
RUN conda install -c http://conda.binstar.org/gabrielelanaro chemlab chemview

USER main
