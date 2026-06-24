# Terraform AWS Infrastructure

This project provisions AWS infrastructure using Terraform with a modular and scalable architecture.

##  Overview

This repository demonstrates how to build and manage AWS infrastructure using Terraform modules. It includes:

* Custom VPC setup
* Public subnet with internet access
* EC2 instance deployment
* Modular Terraform structure

---

##  Project Structure

```
terraform-aws-infra/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
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
```

---

##  Modules

### VPC Module

Creates:

* VPC
* Public Subnet
* Internet Gateway
* Route Table and Association

### EC2 Module

Creates:

* Security Group (SSH access)
* Key Pair (from local public key)
* EC2 Instance inside the VPC subnet

---

## Prerequisites

* Terraform installed
* AWS CLI configured
* AWS account with appropriate permissions

---

##  SSH Key Setup

Generate SSH keys locally:

```
ssh-keygen -t rsa -b 4096 -f terraformKey
```

This creates:

* `terraformKey` (private key)
* `terraformKey.pub` (public key)

---

##  Usage

Initialize Terraform:

```
terraform init
```

Preview changes:

```
terraform plan
```

Apply configuration:

```
terraform apply
```

---

##  Outputs

After deployment, Terraform outputs:

* Public IP of EC2 instance
* SSH command to connect

Example:

```
ssh -i terraformKey ec2-user@<PUBLIC_IP>
```

---

##  Security Notes

* Do NOT commit:

  * `.pem` or private key files
  * `.tfstate` files
* SSH access is open to `0.0.0.0/0` for learning purposes only

---

##  Learning Goals

This project demonstrates:

* Terraform modules
* Infrastructure as Code (IaC)
* AWS networking basics
* Resource dependency management

---

##  Future Improvements

* Remote state (S3 + DynamoDB)
* Private subnets and NAT Gateway
* Multiple environments (dev/staging/prod)
* CI/CD integration
* Module versioning

---

##  License

This project is for learning and demonstration purposes.
