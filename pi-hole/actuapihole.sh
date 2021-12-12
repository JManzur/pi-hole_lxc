#!/bin/bash
# Script de JManzur- "Force Pi-Hole Update"

# Stop Pi-Hole
docker-compose stop pihole

# Start internal DNS service.
systemctl start systemd-resolved.service
ping www.google.com -4 -c 4

# Pull latest Pi-Hole image
docker pull pihole/pihole:latest

# Stop internal DNS service.
systemctl stop systemd-resolved.service

# Start top Pi-Hole
docker-compose up -d

echo ""
echo "Done!"
echo ""
