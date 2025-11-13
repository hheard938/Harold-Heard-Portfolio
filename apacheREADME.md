# AWS EC2 Apache Web Server Project
This project deploys a custom Apache web server on an **Amazon Linux 2023 EC2 instance** and hosts a simple portfolio website.
## Goals
- Practice launching and configuring EC2 instances.
- Install and manage Apache (httpd) on Linux.
- Configure security groups for HTTP/SSH access.
- Serve a custom HTML/CSS site.
- Connect the server content to a public GitHub repository.
## High-Level Steps
1. **Launch EC2**
  - AMI: Amazon Linux 2023
  - Type: t2.micro (Free Tier)
  - Network: security group allowing:
    - HTTP (80) from 0.0.0.0/0
    - SSH (22) from My IP
2. **Install Apache**
  ```bash
  sudo dnf update -y
  sudo dnf install -y httpd
  sudo systemctl enable httpd
  sudo systemctl start httpd
