FROM nvcr.io/nvidia/pytorch:22.09-py3
COPY requirements.txt ./
RUN pip install -r requirements.txt && rm ./requirements.txt

#### tmux ####
RUN apt-get update
RUN apt install -y tmux

WORKDIR /CLIP4Clip