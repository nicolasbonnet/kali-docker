FROM kalilinux/kali-rolling

RUN apt update && apt upgrade -y && apt -y install kali-linux-headless git

RUN mkdir /root/APP && mkdir /root/.ssh
ADD ./devops/ssh/ /root/.ssh/
RUN cd /root/APP/ && git clone git@github.com:skavngr/rapidscan.git