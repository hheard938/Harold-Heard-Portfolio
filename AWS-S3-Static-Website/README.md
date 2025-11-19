# AWS S3 Static Website Hosting Project
## 📌 Overview
This project demonstrates how to host a static website using an **Amazon S3 bucket**.  
The site is served directly from S3 using static website hosting, with public read access restricted to website content only.
This project showcases:
- S3 bucket creation and configuration
- Static website hosting
- Bucket policies for public read access
- Basic HTML/CSS website deployment
- GitHub for source control and documentation
---
## 🧩 Architecture (Mermaid)
```mermaid
flowchart LR
   A["User Browser"] -->|HTTP| B["S3 Static Website Endpoint"]
   B --> C["S3 Bucket<br/>Public Read (Website Only)"]
   D["GitHub Repo<br/>AWS-S3-Static-Website"] --> C
