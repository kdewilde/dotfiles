Add the following lines to
/etc/environment

PROXY=xxx.xxx.xxx.xxx
PORT=80

http_proxy=http://$PROXY:$PORT/ 
https_proxy=http://$PROXY:$PORT/
ftp_proxy=http://$PROXY:$PORT/
no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
HTTP_PROXY=http://$PROXY:$PORT/
HTTPS_PROXY=http://$PROXY:$PORT/
FTP_PROXY=http://$PROXY:$PORT/
NO_PROXY="localhost,127.0.0.1,localaddress,.localdomain.com"





Add the following line to
/etc/apt/apt.conf.d

#Acquire::http::Proxy "xxx.xxx.xxx.xxx";
