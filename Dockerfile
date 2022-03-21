FROM kalilinux/kali-last-release

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get -y install kali-linux-headless git

RUN mkdir /root/APP && mkdir /root/.ssh
ADD ./devops/ssh/ /root/.ssh/
RUN cd /root/ && chmod 700 .ssh/ && chmod 600 .ssh/* && chmod 644 .ssh/*.pub
RUN cd /root/APP && wget https://github.com/skavngr/rapidscan/archive/refs/heads/master.zip && unzip master.zip && rm master.zip

WORKDIR /root