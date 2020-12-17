FROM tensorflow/tensorflow:2.3.1-gpu-jupyter
ENV DEBIAN_FRONTEND=noninteractive
RUN pip3 install -U pip setuptools h5py pandas sklearn keras uproot numpy scipy matplotlib joblib tensorflow-addons tensorboard_plugin_profile pymysql
RUN mkdir -p /localscratch && chmod 777 /localscratch
RUN mkdir -p /localscratch2 && chmod 777 /localscratch2
RUN mkdir -p /uni-mainz.de && chmod 777 /uni-mainz.de

RUN pip3 install jupyter

