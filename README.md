🚀 Terraform AWS VPC + EC2 (Modular Architecture)

This project builds a production-ready AWS infrastructure using Terraform Modules, following industry best practices.

📘 Architecture Overview
VPC
 ├── 2 Public Subnets  
 ├── Internet Gateway  
 ├── Route Table + Associations  
 ├── Security Group  
 └── EC2 Instance (Ubuntu)

🏗 Architecture Diagram

Add this image in your README
(Upload your diagram named architecture.png)

![Architecture Diagram](./images/architecture.png)

🚀 Features

Fully modular structure

Root module orchestrates VPC + EC2 modules

No hardcoding — entire infra is configurable

terraform.tfvars for environment separation

Outputs used for cross-module communication

Works with any region, AZs, CIDR, AMI

📂 Project Structure
Terraform-practice/
│── main.tf
│── variables.tf
│── terraform.tfvars
│── outputs.tf
│── providers.tf
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

⚙️ How to Run This Project
1️⃣ Initialize Terraform
terraform init

2️⃣ Validate the configuration
terraform validate

3️⃣ Preview the infrastructure
terraform plan

4️⃣ Apply changes
terraform apply -auto-approve

5️⃣ Destroy (optional)
terraform destroy -auto-approve

🔧 Configuration (terraform.tfvars)
vpc_cidr = "10.0.0.0/16"

public_subnets_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

azs = ["ap-south-1a", "ap-south-1b"]

ami_id        = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"

🔌 Outputs
vpc_id
public_subnet_ids
security_group_id
ec2_public_ip

🎯 Best Practices Followed

Modular design

Input validation

Clear outputs

Environment-agnostic architecture

DRY (Don’t Repeat Yourself)

Separation of networking + compute layers
