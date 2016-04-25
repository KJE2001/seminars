FROM andrewosh/binder-base

MAINTAINER Roberto Di Remigio  <roberto.d.remigio@uit.no>

USER root

# Install chemlab, chemview and cclib
RUN conda install -c http://conda.binstar.org/gabrielelanaro chemlab chemview

USER main
