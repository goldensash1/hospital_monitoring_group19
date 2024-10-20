#!/usr/bin/env bash

userinfo="5fd809c6916d"
hostinfo="5fd809c6916d.d4b45129.alu-cod.online"

myarchDir="archived_logs_group19"

# Create the directory if it doesn't exist
if [ ! -d "$myarchDir" ]; then
        mkdir "$myarchDir"
else
        echo "Emma, the directory already exists!"
fi

# Check if any files matching the pattern exist
echo "Looking for files matching pattern heart_rate_log.txt_*"
if ls heart_rate_log.txt_* 1> /dev/null 2>&1; then
    for txtfile in heart_rate_log.txt_*; do
        if [ -f "$txtfile" ]; then
            mv "$txtfile" "$myarchDir"
        fi
    done
    echo "Files moved to $myarchDir."
else
    echo "Emma, you are awesome! All is already backed up!"
fi

# Secure copy to remote server
scp -r "$myarchDir" "$userinfo@$hostinfo:/home/"

# Check if scp was successful
if [ $? -eq 0 ]; then
    echo "Yoh Emma, you did it!"
else
    echo "Sorry bro, go fix your script!"
fi


