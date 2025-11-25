Terraform AWS Infrastructure — VPC + EC2 Modular Project

Overview

This repository implements a complete Terraform Modular AWS Infrastructure, including:

✔ Reusable VPC module
✔ Reusable EC2 module
✔ dev / stage / prod environments
✔ Remote backend support
✔ Bootstrap folder for backend provisioning (S3 + DynamoDB)

This structure follows real company-level Terraform best practices for scalable and maintainable IaC.

🏷️ Technologies Used
<p> <img src="https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws"/> <img src="https://img.shields.io/badge/Terraform-Infrastructure_as_Code-7B42BC?style=for-the-badge&logo=terraform"/> <img src="https://img.shields.io/badge/EC2-Compute-yellow?style=for-the-badge&logo=amazonec2"/> <img src="https://img.shields.io/badge/VPC-Networking-blue?style=for-the-badge&logo=awslambda"/> <img src="https://img.shields.io/badge/DevOps-Engineer-brightgreen?style=for-the-badge&logo=github"/> </p>
📁 Repository Structure

This README is 100% accurate with your GitHub structure.

1. Bootstrap (Creates Backend S3 + DynamoDB)
bootstrap/
└── main.tf


Used only once to create:

✔ S3 bucket for remote state
✔ DynamoDB table for locking

2. Modules (Reusable Components)
modules/
│
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── output.tf
│
└── ec2/
    ├── main.tf
    ├── variables.tf
    └── output.tf

VPC Module Creates

VPC

Public Subnets

Internet Gateway

Route Table

Route Table Associations

EC2 Module Creates

Ubuntu EC2 Instance

Security Group

Key Pair

3. Environments (dev / stage / prod)
environments/
│
├── dev/
│   ├── backend.tf
│   ├── main.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── prod/
│   ├── backend.tf
│   ├── main.tf
│   └── variables.tf
│
└── stage/
    ├── backend.tf
    ├── main.tf
    └── variables.tf


Each environment has:

✔ Its own backend
✔ Its own variables
✔ Its own main.tf that calls modules

This is exactly how companies manage multiple environments.

4. Root (Optional Local Execution)
main.tf
provider.tf
variables.tf
output.tf
terraform.tfvars


You can deploy from root OR from environment folders.

How to Deploy
Step 1 — Configure Backend (Only Once)

Run inside bootstrap:

cd bootstrap
terraform init
terraform apply


This creates:

✔ S3 bucket
✔ DynamoDB locking table

Step 2 — Deploy Any Environment
Example: Deploy dev
cd environments/dev
terraform init
terraform plan
terraform apply

For stage:
cd environments/stage
terraform apply

For prod:
cd environments/prod
terraform apply

Why This Structure Is Best Practice

✔ Scalable
✔ Clean separation of environments
✔ Reusable modules
✔ Easy collaboration
✔ Supports Git branching strategies
✔ Supports remote state & locking


👨‍💻 Author

Shaik Mohammad Shoaib
DevOps Engineer (3 Years Experience)

🔗 LinkedIn:
https://www.linkedin.com/in/mohammadshoaib8

🐙 GitHub:
https://github.com/mohammadshoaib8
