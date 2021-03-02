FROM tensorflow/tensorflow:2.4.1-gpu-jupyter
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3-venv
RUN pip3 install -U pip setuptools h5py==2.10.0 pandas sklearn keras uproot numpy scipy matplotlib joblib tensorflow-addons tensorboard_plugin_profile pymysql
RUN mkdir -p /localscratch && chmod 777 /localscratch
RUN mkdir -p /localscratch2 && chmod 777 /localscratch2
RUN mkdir -p /uni-mainz.de && chmod 777 /uni-mainz.de

#CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/ --ip 0.0.0.0 --no-browser --allow-root"]
