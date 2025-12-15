#!/bin/bash

MAILDIR_NEW="/home/professor/Maildir/new"
MAILDIR_CUR="/home/professor/Maildir/cur"
URL=""

decode_email_content() {
    local email_file="$1"

    awk '
        /Content-Transfer-Encoding: base64/ {
            print_flag=1; next;
        }
        print_flag == 1 && $0 == "" {
            content_start=1; next;
        }
        content_start == 1 && /^--/ {
            exit;
        }
        content_start == 1 {
            print $0;
        }
    ' "$email_file" | tr -d '\n' | base64 -d
}

echo "Starting mail watcher for URL..."

while [ -z "$URL" ]; do

    for FILE in "$MAILDIR_NEW"/*; do

        if [ -f "$FILE" ]; then
            
            EMAIL_FILE="$FILE"

            DECODED_CONTENT=$(decode_email_content "$EMAIL_FILE")

            URL_EXTRACTED=$(echo "$DECODED_CONTENT" | grep -oP -m 1 'https?:\/\/[^\s"]+')

            if [ ! -z "$URL_EXTRACTED" ]; then
                URL="$URL_EXTRACTED"
                echo "URL found: $URL"
                
                FILENAME=$(basename "$EMAIL_FILE")
                mv "$EMAIL_FILE" "$MAILDIR_CUR/$FILENAME"
                
                break
            else

                echo "No URL found in $FILENAME. Moving to cur."
                FILENAME=$(basename "$EMAIL_FILE")
                mv "$EMAIL_FILE" "$MAILDIR_CUR/$FILENAME"
            fi
        fi
    done
    

    if [ -z "$URL" ]; then
        echo "No new mail or URL found. Sleeping for 2 seconds..."
        sleep 2
    fi

done

echo "Executing POST request to $URL"
curl -X POST -d "username=professor&password=The_Most_Secret_And_Secure_Password_There_Is_12345!!@@##" "$URL"
echo "Script finished."