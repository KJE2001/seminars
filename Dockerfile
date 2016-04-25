FROM andrewosh/binder-base

MAINTAINER Roberto Di Remigio  <roberto.d.remigio@uit.no>

USER root

# Install chemlab, chemview and cclib
RUN /home/main/anaconda2/bin/pip install Cython
RUN /home/main/anaconda2/bin/pip install cclib
RUN /home/main/anaconda2/bin/pip install -e git+https://github.com/chemlab/chemlab@2e631bda12e56a74759d7f768931ea49265cf471#egg=chemlab-master
RUN /home/main/anaconda2/bin/pip install chemview
RUN /home/main/anaconda2/bin/pip install matplotlib
RUN /home/main/anaconda2/bin/pip install numpy
RUN /home/main/anaconda2/bin/pip install scipy
RUN /home/main/anaconda2/bin/pip install sympy

USER main
