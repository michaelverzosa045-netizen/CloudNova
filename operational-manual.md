# CloudNova Operational Manual

## 1. System Overview
CloudNova is a WordPress website deployed on an Ubuntu Server virtual machine using Docker Compose. It consists of a WordPress web container, a MySQL database container, and a persistent Docker volume.

## 2. Accessing the Server
1. Start the Ubuntu Server VM in Oracle VirtualBox.
2. Log in to Ubuntu.
3. From the host computer, connect through SSH:

   ```bash
   ssh vboxuser@192.168.56.101
