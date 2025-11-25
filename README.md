# 🚀 Terraform VPC + EC2 Project (AWS Terraform Modules Practice)

This repository demonstrates how to build **modular Terraform infrastructure** on AWS, following real industry DevOps standards.  
The goal is to help beginners and professionals understand **how to structure Terraform code using modules**, variables, and reusable components.

---

## 🏷️ **Tech Stack**

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC)
![VPC](https://img.shields.io/badge/AWS-VPC-blue)
![EC2](https://img.shields.io/badge/AWS-EC2-yellow)
![DevOps](https://img.shields.io/badge/DevOps-Engineer-green)
![HashiCorp](https://img.shields.io/badge/HashiCorp-Provider-black)

---

## 📌 **Project Overview**

This project builds the following AWS resources using Terraform modules:

- Custom VPC  
- 2 Public Subnets  
- Internet Gateway  
- Public Route Table  
- Route Table Associations  
- Security Group  
- EC2 Instance (Ubuntu latest AMI)  
- Reusable Terraform Modules (VPC + EC2)  
- `terraform.tfvars` for environment variables  

---


---

## 📂 **Project Structure**

```bash
terraform-modules-practice/
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars
│── providers.tf
│── README.md
│
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │
    └── ec2/
        ├── main.tf
        ├── variables.tf
        ├── outputs.tf
How to Use This Repository
1️⃣ Clone the Repo
git clone https://github.com/mohammadshoaib8/terraform-modules-practice.git
cd terraform-modules-practice

2️⃣ Update terraform.tfvars

This file controls all environment values:

vpc_cidr = "10.0.0.0/16"

public_subnets_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

azs = ["ap-south-1a", "ap-south-1b"]

ami_id        = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"

3️⃣ Initialize Terraform
terraform init

4️⃣ Validate Your Code
terraform validate

5️⃣ Preview Infrastructure
terraform plan

6️⃣ Apply Changes
terraform apply -auto-approve

7️⃣ Destroy Infrastructure (Cleanup)
terraform destroy -auto-approve

🧩 How the Modules Work
VPC Module

Located in /modules/vpc

Handles:

VPC

Subnets

IGW

Route Table

Associations

EC2 Module

Located in /modules/ec2

Handles:

EC2 instance

Security group

Attaching SG to subnet

🔌 Outputs Provided

After applying Terraform, you’ll see:

vpc_id
public_subnet_ids
security_group_id
ec2_public_ip
