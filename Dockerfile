FROM andrewosh/binder-base

MAINTAINER Roberto Di Remigio  <roberto.d.remigio@uit.no>

USER root

USER main

# Install chemview
RUN /home/main/anaconda2/bin/pip install -e git+https://github.com/gabrielelanaro/chemview#egg=chemview
# Install chemlab and cclib
RUN conda install -c http://conda.binstar.org/gabrielelanaro chemlab cclib
