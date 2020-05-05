FROM tensorflow/tensorflow:2.1.0-gpu-py3
ENV DEBIAN_FRONTEND=noninteractive
RUN pip3 install -U pip setuptools h5py pandas sklearn keras uproot numpy scipy matplotlib joblib 
RUN mkdir -p /localscratch && chmod 777 /localscratch
RUN mkdir -p /localscratch2 && chmod 777 /localscratch2
RUN mkdir -p /uni-mainz.de && chmod 777 /uni-mainz.de
