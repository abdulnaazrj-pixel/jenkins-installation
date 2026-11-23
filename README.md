# Jenkins Installation on AWS EC2 (Ubuntu)

## Project Overview

This project demonstrates how to install and configure Jenkins on an AWS EC2 Ubuntu instance using a Bash automation script.

The installation script automates the setup of Java 21, Jenkins LTS, and Jenkins service configuration.

## Technologies Used

- AWS EC2
- Ubuntu Linux
- Jenkins LTS
- Java 21
- Bash Scripting
- Git and GitHub

## Architecture

Developer → GitHub → AWS EC2 (Ubuntu) → Jenkins Server

## Prerequisites

- AWS account
- Ubuntu EC2 instance
- SSH access to the EC2 instance
- Security Group allowing SSH (22)
- Security Group allowing Jenkins access (8080), restricted to your IP

## Project Structure

```text
jenkins-installation/
│
├── jenkins-install.sh
└── README.md
```

## Installation Steps

### 1. Connect to EC2

```bash
ssh -i "your-key.pem" ubuntu@YOUR_PUBLIC_IP
```

### 2. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/jenkins-installation.git
cd jenkins-installation
```

### 3. Give Execute Permission

```bash
chmod +x jenkins-install.sh
```

### 4. Run the Installation Script

```bash
./jenkins-install.sh
```

### 5. Verify Jenkins

```bash
sudo systemctl status jenkins
```

Expected status: Active (running).

## Access Jenkins

Open your browser:

```text
http://YOUR_PUBLIC_IP:8080
```

### Unlock Jenkins

Retrieve the initial administrator password:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Enter the password in the Jenkins setup page and install the suggested plugins.

## Learning Outcomes

- Created and configured an AWS EC2 Ubuntu instance.
- Connected to Linux using SSH.
- Installed Java and Jenkins.
- Automated Jenkins installation using Bash scripting.
- Managed project files using Git and GitHub.

## Author

**Mohammed Abdul Razak**

Cloud Support | AWS | DevOps Learner

GitHub: https://github.com/YOUR_USERNAME

LinkedIn: https://www.linkedin.com/in/mohammed-abdul-razzak-65bb3a188/

---

*This project was created for hands-on AWS and DevOps practice.*
