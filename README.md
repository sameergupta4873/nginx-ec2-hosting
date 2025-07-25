# Static Web Hosting with NGINX on EC2

This project demonstrates how to deploy a static website using NGINX on an AWS EC2 instance.

## 🛠️ Stack
- AWS EC2 (Ubuntu)
- NGINX
- Bash

## 📦 Files
- `setup.sh`: Installs and configures NGINX, and copies a sample `index.html` page.
- `index.html`: Sample HTML page.

## 🚀 Setup Instructions

1. Launch an EC2 instance (Ubuntu)
2. SSH into the instance:
   ```bash
   ssh -i your-key.pem ubuntu@your-ec2-ip
   ```
3. Upload the project files:
   ```bash
   scp -i your-key.pem setup.sh index.html ubuntu@your-ec2-ip:/home/ubuntu/
   ```
4. Connect to the instance:
   ```bash
   ssh -i your-key.pem ubuntu@your-ec2-ip
   ```
5. Make the setup script executable and run it:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

6. Open your browser and go to:
   ```
   http://<your-ec2-ip>
   ```
   You should see the static HTML page.

## 🔍 What the Script Does
- Updates package repositories
- Installs NGINX
- Copies `index.html` to the NGINX web root directory (`/var/www/html`)
- Restarts the NGINX service

## ✅ Output
Your EC2 instance will now serve your static website using NGINX on port 80.

## 🖼️ Screenshot
![Deployed Website Screenshot](screenshot.png)

## 🧠 Learning Outcomes
- Working with EC2 and key pairs
- Installing and managing packages on Ubuntu
- Basic Linux permissions and file operations
- Configuring and verifying NGINX deployment

## 📎 Related Commands
```bash
sudo systemctl status nginx
sudo systemctl restart nginx
```

## 📌 Notes
- Make sure port **80** is open in the EC2 security group.
- Use `chmod 400 your-key.pem` before SSH if you get permission errors.