#!/bin/bash

sslencrypt() {
echo "+-----------------------------------------+"
echo "|type-in-path/file.ending-of-original-file|"
echo "|e.g.-myfile.jpg--------------------------|"
echo "+-----------------------------------------+"
read -e origfile
if [ -f "$origfile" ]; then
	openssl enc -e -aes256 -in "$origfile" -out "$origfile".enc
else 
	echo -e "encrypting: failed" 
	exit 1
fi
}

ssldecrypt() {
echo "+------------------------------------------+"
echo "|type-in-path/file.ending-of-encrypted-file|"
echo "|e.g.-myfile.enc---------------------------|"
echo "+------------------------------------------+"
read -e encfile
echo "+------------------------------------------+"
echo "|type---in---filename.ending---------------|"
echo "|e.g.----myfoto.jpg------------------------|"
echo "+------------------------------------------+"
read decfile
if [ -f "$encfile" ]; then # && [ -f "$decfile" ]
	openssl enc -d -aes256 -in "$encfile" -out "$decfile"
	echo "decrypting: succes"
else 
	echo -e "decrypting: failed" 
	exit 1
fi
}


echo "+------------------------------------------+"
echo "|encrypt----file-----------1---------------|"
echo "|decrypt----file-----------2---------------|"
echo "+------------------------------------------+"
read vorgang
if [ "$vorgang" = 1 ]
	then sslencrypt;
elif [ "$vorgang" = 2 ]
	then ssldecrypt;
else 
	echo -e "unxpected error: NULL" 
	exit 1
fi
