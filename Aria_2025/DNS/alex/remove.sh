#!/bin/bash
# alexandre hugla

# Supprime un serveur du DNS (dnsmasq)

var_domain=.cpod-vrealize.az-fkd.cloud-garage.net

var_ip=$1
var_fqdn="$2$var_domain"

var_ligne="$var_ip $var_fqdn"
sed -i "/$var_ligne/d" /etc/hosts

#log:
echo `date`  DNS REMOVE  $var_ligne >> /root/alex/dns.log

