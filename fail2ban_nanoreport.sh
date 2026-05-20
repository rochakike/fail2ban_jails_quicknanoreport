#!/bin/bash

for jail in $(sudo fail2ban-client status | grep "Jail list" | sed 's/.*://;s/,//g'); do
    echo -n "$jail: "
    sudo fail2ban-client status "$jail" | grep --color=always "Currently banned"
done
