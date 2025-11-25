🌐 Terraform VPC + EC2 Project (AWS Hands-On Lab)
<p align="left"> <img src="/mnt/data/03787faa-11ec-4afb-b728-15bf406a9929.png" width="900"> </p>
🚀 Terraform Modules Practice – Complete AWS Project

A fully modular, production-grade Terraform Project demonstrating how to build AWS infrastructure using best practices.
This repository is designed so anyone visiting your GitHub instantly understands your project.

🏷️ Tech Stack & Topics
<p> <img src="https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws" /> <img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform" /> <img src="https://img.shields.io/badge/VPC-Networking-blue?style=for-the-badge&logo=awslambda" /> <img src="https://img.shields.io/badge/EC2-Compute-yellow?style=for-the-badge&logo=amazonec2" /> <img src="https://img.shields.io/badge/HashiCorp-Provider-6441A5?style=for-the-badge&logo=hashicorp" /> <img src="https://img.shields.io/badge/DevOps-Engineer-green?style=for-the-badge&logo=githubactions" /> </p>
🎯 Project Goals

This repository helps you practice real-world Terraform patterns:

✔ Modular Infra Design
✔ Separate Dev / Stage / Prod
✔ Remote State using S3 + DynamoDB
✔ Reusable VPC + EC2 Modules
✔ Team-ready workflow
✔ Git-ignored state files
✔ Clean & scalable structure

📁 Repository Structure
terraform-modules-practice/
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── security-groups/
│   └── (additional modules)
│
└── environments/
    ├── dev/
    ├── stage/
    └── prod/

📦 modules/

Reusable modules with:

main.tf

variables.tf

outputs.tf

🌍 environments/

Each environment contains:

Backend config

Provider config

Module usage

tfvars support

🔐 Remote Backend Setup
☁️ S3 Bucket – State Storage

Stores terraform.tfstate

Enables versioning

Shares state across team members

🔒 DynamoDB – State Locking

Prevents two people from applying at same time

Ensures safe & consistent infra

🧪 How to Use This Project
1️⃣ Navigate to an environment
cd environments/dev

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate
terraform validate

4️⃣ Plan
terraform plan

5️⃣ Apply
terraform apply

6️⃣ Destroy Infra
terraform destroy

🌈 Architecture Overview

You can add a diagram here later:

VPC
 ├── Public Subnets
 ├── Internet Gateway
 ├── Route Tables
 └── EC2 Instance

💼 Team Collaboration Flow

✔ Everyone uses same remote state
✔ DynamoDB prevents conflict
✔ Modules ensure reusability
✔ Environments isolate deployments

🧰 Best Practices Followed

✔ No hardcoded secrets
✔ Variables for all inputs
✔ Output references between modules
✔ Consistent formatting
✔ Git-ignored state files
✔ Industry-level folder structure

🤝 Contributing

Fork the repo

Create a branch

Submit PR

⭐ Support

If this helps you — don’t forget to star ⭐ the repo!

👤 Author

Mohammad Shoaib
DevOps Engineer | Terraform | AWS | Kubernetes
