#!/bin/sh

host_ip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')

port=7890

PROXY_SOCK5="socks5://${host_ip}:${port}"

set_all_proxy(){
    export all_proxy="${PROXY_SOCK5}"
}

unset_proxy(){
    unset all_proxy
}

test_setting(){
    echo "all_proxy:" ${all_proxy}
}

if [ "$1" = "set" ]
then
    set_all_proxy

elif [ "$1" = "unset" ]
then
    unset_proxy

elif [ "$1" = "test" ]
then
    test_setting
else
    echo "Unsupported arguments."
fi
