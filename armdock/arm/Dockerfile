FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y apt-utils  xinetd
RUN apt-get install -y qemu qemu-user qemu-user-static

RUN groupadd -r ctf && useradd -r -g ctf ctf
ADD ctf.xinetd /etc/xinetd.d/ctf
ADD ./chall /home/ctf/
ADD ./flag.txt /home/ctf/
ADD ./start.sh     /home/ctf/

RUN chmod 440 /home/ctf/*
RUN chown -R root:ctf /home/ctf
RUN chmod 750 /home/ctf/start.sh
RUN chmod 750 /home/ctf/chall

RUN service xinetd restart
CMD ["/usr/sbin/xinetd", "-dontfork"]
