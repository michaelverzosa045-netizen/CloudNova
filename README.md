# CloudNova — Enterprise Cloud Architecture Project

## Project Overview
CloudNova is a multi-tier web application deployed on an Ubuntu Server virtual machine using Docker Compose. It demonstrates virtualization, containerization, persistent storage, network security, and automated database backups.

## Architecture
The project runs on an Ubuntu Server VM hosted in Oracle VirtualBox. Docker Compose manages two connected containers:

- **WordPress:** Web application accessible through HTTP on port 80.
- **MySQL 8.0:** Database service used by WordPress and accessible internally through the Docker network.
- **Docker Volume:** `wordpress-cloud_db_data` stores MySQL data persistently.

## Technology Stack
- Oracle VirtualBox
- Ubuntu Server
- Docker
- Docker Compose
- WordPress
- MySQL 8.0
- UFW Firewall
- Bash
- Cron
- Git

## Deployment
1. Install Ubuntu Server in VirtualBox.
2. Install Docker and Docker Compose.
3. Configure the application using `docker-compose.yml` and a private `.env` file.
4. Start the application:

   ```bash
   docker compose up -d
