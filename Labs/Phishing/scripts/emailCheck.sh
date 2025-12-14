#!/bin/bash

got_url="false"


while [ $got_url != "true" ]; do

	for FILE in /home/professor/Maildir/new/*; do

		if url=$(grep -oP 'https?:\/\/[^\s"]+' "$FILE"); then

			echo $url;
			got_url="true";

		fi

	done

	sleep 2;

done

curl -X POST -d "username=professor&password=The_Most_Secret_And_Secure_Password_There_Is_12345!!@@##" $url;
