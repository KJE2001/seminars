FROM andrewosh/binder-base

MAINTAINER Roberto Di Remigio  <roberto.d.remigio@uit.no>

USER root

USER main

# Install cclib
RUN /home/main/anaconda2/bin/pip install cclib
# Install chemview
RUN /home/main/anaconda2/bin/pip install -e git+https://github.com/gabrielelanaro/chemview#egg=chemview
# Install chemlab
RUN /home/main/anaconda2/bin/pip install -e git://github.com/chemlab/chemlab.git@v0.4.1#egg=chemlab
