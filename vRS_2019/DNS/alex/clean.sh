#!/bin/bash
# alexandre hugla

# Nettoie lorsque conflit (hostname ou IP deja present dans DNS)

sed -i "/$1/d" /etc/hosts

#log:
echo `date`  CLEAN  $1 >> /root/alex/dns.log


