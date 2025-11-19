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

## 🧩 Architecture (Mermaid Diagram)

```mermaid

flowchart LR

    A[User Laptop / Browser] -->|HTTP| B[EC2 Public IPv4]

    B --> C[EC2 Instance<br/>Amazon Linux 2023]

    C --> D[Apache HTTP Server (httpd)]

    D --> E[/var/www/html<br/>Portfolio Website Files]

    C --> F[Security Group<br/>Inbound: HTTP 80, SSH 22]

    G[GitHub Repository] <-->|git push / pull| A

    G --> E
  
