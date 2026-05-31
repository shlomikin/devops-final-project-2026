# DevOps Final Project 2026

## Project Overview

This project demonstrates a complete DevOps workflow using:

- GitHub
- Jenkins
- Terraform
- AWS EC2

The goal of the project is to automate the deployment of a web server and website using Infrastructure as Code (IaC) and Configuration Management tools.

---

## Technologies Used

### GitHub
Used for source code management and version control.

### Jenkins
Used to create and run a CI/CD Pipeline.

### Terraform
Used to validate and manage cloud infrastructure.

### Ansible
Used to configure the web server and deploy the website.

### AWS EC2
Used to host:

- Jenkins Server
- Website Server

---

## Project Architecture

GitHub
↓
Jenkins Pipeline
↓
Terraform Validation
↓
Ansible Deployment
↓
AWS EC2 Web Server
↓
Website

---

## Jenkins Pipeline Stages

### Checkout
Retrieves the latest project code from GitHub.

### Terraform
Runs:

```bash
terraform init
terraform validate
terraform plan
