# AWS Apache EC2 Web Server Project
## 📌 Overview
This project demonstrates how to deploy, configure, and host a live website using an **Apache web server** running on an **Amazon Linux EC2 instance**.  
The EC2 instance hosts my personal cloud portfolio website and is fully integrated with GitHub for version control.
This project showcases:
- Amazon EC2 provisioning
- Apache web server installation & automation
- Linux administration (Amazon Linux 2023)
- User Data scripting
- Security Groups (HTTP + SSH)
- Public IP hosting
- GitHub workflow for website files
---
## 🧩 Architecture
**Flow Explanation:**

1. A t3.micro EC2 instance was created in us-east-2  

2. Apache was automatically installed via a user data script  

3. Security Groups allowed:

   - HTTP (80) — for website traffic  

   - SSH (22) — for admin access  

4. Website files were uploaded to GitHub and pulled to the server  

5. The public IPv4 address serves the live site

---

## 🚀 Live Website

**Public IPv4:**  

`http://18.222.80.161`  

(Website served directly from your EC2 Apache server)

---

## 🛠️ User Data Script

```bash

#!/bin/bash

sudo yum update -y

sudo yum install httpd -y

sudo systemctl start httpd

sudo systemctl enable httpd

cd /var/www/html

sudo echo "<h1>Harold Heard – AWS Cloud Portfolio</h1>" > index.html
 
