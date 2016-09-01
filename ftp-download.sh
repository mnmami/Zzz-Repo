#!/bin/bash
HOST='host name / ip'
USER='user name'
PASSWD='password'
PORT='port - PORT is not necessary if the default 22 is used'

ftp -p -n -v -i $HOST $PORT << EOT
/* 
-p: enable DATA TRANSFER passive mode (allows connection back over firewall)
-n: prevent "auto-login" upon initial connection.
-v: verbose (show all messages from the remote server)
-i: disable (y/n) prompting during file transfer
*/
binary
user $USER $PASSWD
mget /taxi*.zip
bye
EOT
