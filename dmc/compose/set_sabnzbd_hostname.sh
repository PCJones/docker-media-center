#!/bin/bash

source .env && docker exec dmc-sabnzbd-1 sh -c 'sed -i -e "s/^host_whitelist *=.*$/host_whitelist = $(hostname), sabnzbd, '"$SUB_DOMAIN_SABNZBD.$DOMAIN"' /g" /config/sabnzbd.ini'