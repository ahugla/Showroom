#!/bin/bash
# alexandre hugla

# Supprime un serveur du DNS (dnsmasq)

var_domain=.cpod-vrealizesuite.az-demo.shwrfr.com

var_ip=$1
var_fqdn="$2$var_domain"

var_ligne="$var_ip $var_fqdn"
sed -i "/$var_ligne/d" /etc/hosts

#log:
echo `date`  REMOVE  $var_ligne >> /root/alex/dns.log
