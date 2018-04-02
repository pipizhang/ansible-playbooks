#!/bin/bash

# Fix 'no route to host' issue
sudo route del -net 10.0.2.0/24

# Fix DNS issue
sudo echo -e "namespace 8.8.8.8\n$(cat /etc/resolv.conf)" > /etc/resolv.conf

