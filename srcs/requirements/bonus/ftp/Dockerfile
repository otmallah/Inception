FROM debian:buster

RUN apt-get update && yes | apt-get install  vsftpd vim 
RUN echo "" > /etc/vsftpd.conf

copy vsftpd.conf .
COPY ftp.sh .

RUN cat vsftpd.conf > /etc/vsftpd.conf
RUN useradd -m -p pass otmallah
RUN service vsftpd start
RUN yes | apt-get install nginx

ENTRYPOINT ["sh" , "ftp.sh"]

CMD ["tail" , "-f"]