# Final Reflection: CloudNova Cloud Architecture Project

## Introduction

The CloudNova project provided me with an opportunity to apply the concepts and skills I learned in cloud computing and server administration. Through this project, I deployed a WordPress web application using Ubuntu Server, Docker, and Docker Compose in a virtualized environment. The experience helped me understand how different technologies work together to create a functional and reliable web application.

## Learning Experience

One of the most important things I learned was how to deploy and manage a multi-tier application. By using Docker Compose, I was able to run WordPress and MySQL in separate containers while allowing them to communicate through a Docker network.

I also learned the importance of persistent storage. By configuring a Docker volume for the MySQL database, I ensured that important data would remain available even after restarting the containers or rebooting the Ubuntu virtual machine. Testing this feature helped me understand why persistent storage is essential in cloud-based applications.

Another valuable experience was configuring the UFW firewall. I learned how to restrict incoming traffic while allowing only the necessary ports for SSH and HTTP access. This helped me understand the importance of securing a server and minimizing unnecessary network exposure.

## Challenges and Solutions

Throughout the project, I encountered several challenges involving Docker configuration, database management, SSH connectivity, and server administration. These challenges required patience, careful troubleshooting, and a better understanding of Linux commands.

One significant challenge was ensuring that the database could be backed up and restored properly. I addressed this by creating a Bash backup script and configuring Cron to execute it daily. I also tested restoring a database backup into a separate test database and verified that the WordPress tables were present.

Another challenge was protecting sensitive information before preparing the project for GitHub. I learned how to use environment variables through a `.env` file and configure `.gitignore` to prevent credentials, database backups, and logs from being included in the repository.

## Skills and Knowledge Gained

This project improved my skills in:

- Linux server administration and SSH connectivity
- Virtual machine management using Oracle VirtualBox
- Containerization using Docker and Docker Compose
- Database persistence, backup, and restoration
- Firewall configuration using UFW
- Task automation using Bash and Cron
- Version control and project preparation using Git

These skills helped me gain a better understanding of how web applications can be deployed, maintained, and secured in a server environment.

## Conclusion

Overall, the CloudNova project was a valuable learning experience that strengthened my understanding of cloud architecture and infrastructure management. It taught me that deploying an application involves more than making it accessible through a browser. It also requires proper storage management, security configuration, automation, monitoring, and documentation.

This project increased my confidence in working with Linux servers and Docker-based applications. The knowledge and experience I gained will be useful in future IT projects and in pursuing a career related to cloud computing, system administration, and infrastructure management.
