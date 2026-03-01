
#!/bin/bash

LOGFILE="patrick_live.log"

while true
do
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

    RANDOM_NUM=$((RANDOM % 3))

    if [ "$RANDOM_NUM" -eq 0 ]; then
        echo "$TIMESTAMP INFO Application running normally" >> $LOGFILE
    elif [ "$RANDOM_NUM" -eq 1 ]; then
        echo "$TIMESTAMP WARNING Memory usage increasing" >> $LOGFILE
    else
        echo "$TIMESTAMP ERROR Application crashed" >> $LOGFILE
    fi

    sleep 2
done

