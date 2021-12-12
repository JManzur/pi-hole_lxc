#!/bin/bash
# Script de JManzur

# Stop Pi-Hole
docker-compose stop pihole

# Start internal DNS service.
systemctl start systemd-resolved.service
ping www.google.com -4 -c 4
echo -e "\n" Pi-Hole Stoped!