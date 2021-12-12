#!/bin/bash
# Script de JManzur

# Stop internal DNS service.
systemctl stop systemd-resolved.service

# Start PI-HOLE
docker-compose up -d pihole
echo -e "\n" Pi-Hole Iniciado!
