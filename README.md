# 🚀 Terraform AWS VPC + EC2 (Modular) — README

> **Files included:** README.md (this file), `modules/`, `terraform.tfvars`, `providers.tf`, `outputs.tf`, and optional `docs/` for CSS and GitHub Pages.

---

## 📌 Quick summary

This repository demonstrates a production-style, modular Terraform setup that creates:

* VPC
* Public Subnets
* Internet Gateway
* Route Table + Associations
* Security Group
* EC2 Instance

The project is modular: `modules/vpc` and `modules/ec2`. The root module declares variables and passes them into child modules. Use `terraform.tfvars` for environment-specific values.

---

## 📂 Project structure

```
Terraform-practice/
│── README.md
│── providers.tf
│── main.tf
│── variables.tf
│── terraform.tfvars
│── outputs.tf
│
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf

Optional:
└── docs/
    ├── index.md        # GitHub Pages (optional)
    └── styles.css      # CSS for GitHub Pages or local preview
```

---

## ⚙️ How to run (commands)

```bash
# initialise providers
terraform init

# validate config
terraform validate

# preview
terraform plan -out=tfplan

# apply
terraform apply "tfplan"

# to destroy
terraform destroy -auto-approve
```

---

## 🧩 terraform.tfvars (example)

```hcl
vpc_cidr = "10.0.0.0/16"

public_subnets_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

azs = ["ap-south-1a", "ap-south-1b"]

ami_id        = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"
```

---

## ✅ README content with light styling for GitHub Pages or local preview

Below is the **exact README content** you can paste into `README.md`. Additionally you'll find a simple `styles.css` you can use if you host the README as a GitHub Pages site (or a static docs site) under `/docs`.

> **Note:** GitHub's README.md rendering *ignores most CSS* when the file is viewed on the repo page. The CSS below is intended for a documentation site (GitHub Pages) or a local HTML preview of the README.

---

## 📄 Paste-ready `README.md` (with HTML banner block)

````markdown
<!-- Banner (simple HTML block) -->
<div align="center">
  <h1>🚀 Terraform AWS VPC + EC2 (Modular)</h1>
  <p>Production-style infrastructure using Terraform modules (VPC + EC2)</p>
  <img src="./images/architecture.png" alt="architecture" width="700" />
</div>

---

## Project overview

This repo demonstrates a modular Terraform setup that creates a VPC, public subnets, IGW, route table, security group and an EC2 instance. The design separates networking (VPC) from compute (EC2) using modules.

### Structure

```text
root/
  ├─ modules/vpc
  ├─ modules/ec2
  ├─ terraform.tfvars
  └─ providers.tf
````

### How to run

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

### Variables (example `terraform.tfvars`)

See `terraform.tfvars` in the repo root for CIDRs, AZs, and AMI/instance-type values.

---

## Outputs

* `vpc_id`
* `public_subnet_ids`
* `security_group_id`
* `ec2_public_ip`

---

## Contributing

PRs welcome. Follow typical project flow: fork → branch → PR. Add tests or examples.

---

## License

Add your preferred license (MIT, Apache-2.0, etc.)

```
```

---

## 🎨 Optional `styles.css` for docs (place under `/docs/styles.css`)

Use this CSS if you create a GitHub Pages site (copy `index.md` into `/docs` and reference `styles.css`).

```css
/* docs/styles.css */
:root{
  --bg:#0f1724;
  --card:#0b1220;
  --accent:#06b6d4;
  --muted:#94a3b8;
}

body{
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial;
  background: linear-gradient(180deg, #0b1220 0%, #071021 100%);
  color: #e6eef6;
  line-height: 1.6;
  padding: 2rem;
}

.container{
  max-width: 900px;
  margin: 0 auto;
  background: rgba(255,255,255,0.02);
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 8px 30px rgba(2,6,23,0.6);
}

h1, h2 {
  color: var(--accent);
}

pre {
  background: rgba(10,14,20,0.6);
  padding: 1rem;
  border-radius: 8px;
  overflow-x: auto;
}

code{
  background: rgba(255,255,255,0.02);
  padding: 0.15rem 0.35rem;
  border-radius: 6px;
}

.btn{
  display:inline-block;
  padding: 0.6rem 1rem;
  border-radius: 8px;
  background: linear-gradient(90deg, var(--accent), #3b82f6);
  color:#001219;
  text-decoration:none;
  font-weight:600;
}
```

---

## 🖼️ Images and design assets

* Add `images/architecture.png` to the repo root and reference it in README.
* If you want me to generate an architecture PNG or a LinkedIn banner, tell me: **"Generate images"** and mention preferred colors or text.

---

## ✅ Final tips for posting to GitHub & LinkedIn

1. Push code to GitHub with a descriptive repo name: `terraform-vpc-ec2-modules`.
2. Add the README.md and `images/architecture.png`.
3. Create a short demo GIF or screenshots showing `terraform plan` and `terraform apply` output.
4. On LinkedIn, use the copy I provided earlier, attach the GIF/banner and link to the repo.

---

If you want, I can now:

* ✨ Generate a clean `architecture.png` and a LinkedIn banner image.
* 🗂 Create the full repo ZIP ready to upload.

Which one do you want next?
