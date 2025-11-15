## AWS Apache EC2 Web Server Project
### 📌 Project Overview
This project demonstrates how to deploy a fully functional **Apache web server** on an Amazon EC2 instance using **User Data automation**, security groups, and cloud best practices.  
It is part of my AWS Cloud Portfolio showcasing hands-on experience with compute, networking, storage, and automation.
---
## 🛠️ Technologies Used
- Amazon EC2 (Elastic Compute Cloud)
- Amazon VPC
- Security Groups
- User Data (shell scripting)
- Amazon Linux 2
- Apache HTTP Server
- GitHub Integration (optional)
---
## 🚀 Deployment Steps
### 1️⃣ Launch EC2 Instance
- AMI: Amazon Linux 2  
- Instance type: t2.micro (Free Tier)  
- Network: Default VPC  
- Security Group:
 - Port 22 → SSH
 - Port 80 → HTTP (web traffic)
---
### 2️⃣ Add User Data Script
The following User Data script automates the installation and configuration of Apache on the EC2 instance:
```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from Harold Heard – AWS Apache Projects</h1>" > /var/www/html/index.html
```
---
## 📸 Screenshots (Coming Soon)
I will be adding screenshots in the next update, including:
- EC2 Instance dashboard  
- Security Group inbound rules  
- Apache service running (`systemctl status`)  
- Browser showing the website live  
- User Data script results

