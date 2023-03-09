FROM debian:buster

RUN apt-get update && yes | apt-get install  vsftpd vim 
RUN echo "" > /etc/vsftpd.conf

copy ./tools/vsftpd.conf .
COPY ./tools/ftp.sh .

RUN cat vsftpd.conf > /etc/vsftpd.conf
RUN useradd -m -p 1234  otmallah
RUN echo otmallah:pass | /usr/sbin/chpasswd
RUN service vsftpd start

# ENTRYPOINT ["sh", "ftp.
# 

CMD ["vsftpd" , "/etc/vsftpd.conf"]