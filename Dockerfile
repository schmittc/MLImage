FROM tensorflow/tensorflow:2.0.1-gpu-py3
ENV DEBIAN_FRONTEND=noninteractive
RUN pip3 install -U pip setuptools h5py pandas sklearn keras uproot numpy scipy matplotlib joblib 
RUN mkdir -p /localscratch && chmod 777 /localscratch
