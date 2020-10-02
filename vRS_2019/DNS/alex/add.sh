#!/bin/bash
# alexandre hugla

# Ajoute un serveur dans le DNS (dnsmasq)

var_domain=.cpod-vrealizesuite.az-demo.shwrfr.com

var_ip=$1
var_fqdn="$2$var_domain"

var_ligne="$var_ip $var_fqdn"
echo $var_ligne >> /etc/hosts

#log:
echo `date`  ADD  $var_ligne >> /root/alex/dns.log

