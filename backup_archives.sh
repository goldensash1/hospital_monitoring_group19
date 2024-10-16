#!/usr/bin/env bash

userinfo="2d294d8d9a24"
hostinfo="2d294d8d9a24.601a9382.alu-cod.online"

myarchDir="archived_logs_group19"

if [ ! -d "myarchDir" ]; then
        mkdir "$myarchDir"
else
        echo "Emma the directory already exist!"
fi

for txtfile in heart_rate_log.txt_*; do
        if [ ! -f "$txtfile" ]; then
                echo "Emma you are awesome all is backed up!"
        else
                mv "$txtfile" "myarchDir"
        fi
done

scp -r $myarchDir $userinfo@$hostinfo:/home/

if [ $? -eq 0 ]; then
        echo "yoh Emma you did it"
else
        echo "sorry bro go fix your script"
fi
