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
  
