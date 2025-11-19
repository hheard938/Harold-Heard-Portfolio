# AWS Apache EC2 Web Server Project
## 📌 Overview
This project demonstrates how to deploy and host a live website using an **Apache web server** running on an **Amazon Linux EC2 instance**.  
The instance hosts my cloud portfolio website and syncs with GitHub for source control.
This project showcases:
- EC2 provisioning and configuration  
- Apache installation and automation  
- Linux server administration  
- Security Group management  
- Hosting a public website via IPv4  
- GitHub-based website deployment  
---
## 🧩 Architecture (Mermaid Diagram)
```mermaid
flowchart LR
   A["User Laptop / Browser"] -->|HTTP| B["EC2 Public IPv4"]
   B --> C["EC2 Instance<br/>Amazon Linux 2023"]
   C --> D["Apache HTTP Server (httpd)"]
   D --> E["/var/www/html<br/>Portfolio Website Files"]
   C --> F["Security Group<br/>Inbound: HTTP 80, SSH 22"]
   G["GitHub Repository"] <-->|git push / pull| A
   G --> E
  #!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
cd /var/www/html
sudo echo "<h1>Harold Heard – AWS Cloud Portfolio</h1>" > index.html
