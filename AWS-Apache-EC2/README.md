# AWS Apache EC2 Web Server Project
## 📌 Project Overview
This project deploys an Apache web server on an Amazon EC2 instance using automated User Data scripting. It demonstrates cloud fundamentals such as compute provisioning, Linux administration, networking, and web hosting.
The instance also hosts my personal portfolio website, making this a real-world example of AWS infrastructure powering a live application.
---
## 📝 Project Description
This project showcases an end-to-end deployment of an Apache HTTP server on an Amazon Linux EC2 instance.  
Key steps included:
- Launching an EC2 instance inside the default VPC  
- Configuring Security Groups to allow SSH (22) and HTTP (80) traffic  
- Using a User Data script to automatically install and configure Apache  
- Creating a custom index page to verify successful deployment  
- Hosting a live portfolio site on the EC2 instance  
- Integrating the project into GitHub for version control and documentation  
This hands-on project demonstrates practical experience with AWS compute services, automation, and cloud infrastructure.
---
## 🧠 Skills Demonstrated
- **Amazon EC2 provisioning**
- **User Data (cloud-init) automation**
- **Apache web server installation & management**
- **Linux CLI administration (systemctl, yum, file paths)**
- **Networking & Security Groups (HTTP + SSH)**
- **Cloud web hosting**
- **GitHub version control**
- **Troubleshooting & debugging on Linux**
---
## 🏗️ Architecture (High-Level)
```
User → Browser → EC2 Public IP → Apache Web Server → index.html
```
---
## 🚀 Deployment Steps
### 1️⃣ Launch EC2 Instance
- AMI: **Amazon Linux 2**
- Instance type: **t2.micro (Free Tier)**
- Network: **Default VPC**
- Security Group Rules:
 - Port **22** → SSH
 - Port **80** → HTTP
---
### 2️⃣ Add User Data Script
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
---
## 🩺 Troubleshooting (Optional Future Section)
Coming soon: notes about common issues such as file path errors, Linux case sensitivity, and missing Apache permissions.
---
## 🔗 Related Links
**Live Portfolio Website:** http://<your-IP-or-domain>  
**GitHub Repository:** https://github.com/iheard938/Harold-Heard-Portfolio

