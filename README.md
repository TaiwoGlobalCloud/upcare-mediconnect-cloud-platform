# 🏥 UpCare MediConnect Cloud Platform

<div align="center">

[![Terraform](https://img.shields.io/badge/Terraform-v1.14+-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-232F3E?logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=github-actions&logoColor=white)](https://github.com/features/actions)
[![Terraform Validate](https://img.shields.io/badge/Terraform-Validate-success)](#)
[![Checkov](https://img.shields.io/badge/Security-Checkov-success)](https://www.checkov.io/)
[![TFLint](https://img.shields.io/badge/TFLint-Passing-success)](https://github.com/terraform-linters/tflint)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

</div>

---

## 📊 Project Status

| Component | Status |
|-----------|--------|
| Infrastructure Modules | ✅ Complete |
| GitHub Actions | ✅ Complete |
| Terraform Validation | ✅ Complete |
| Checkov Integration | ✅ Complete |
| TFLint Integration | ✅ Complete |
| Terraform Documentation | ✅ Complete |
| Security Documentation | 🚧 In Progress |
| Architecture Diagram | 🚧 In Progress |
| Threat Model | 📅 Planned |


# Enterprise AWS Infrastructure for Secure Healthcare Applications

UpCare MediConnect Cloud Platform is a modular, security-focused Infrastructure-as-Code (IaC) project that demonstrates how to provision, secure, and automate enterprise-grade AWS infrastructure using Terraform.

Designed around modern cloud engineering and DevSecOps practices, the project showcases secure networking, container orchestration, cloud governance, infrastructure automation, and continuous security validation using native AWS services and GitHub Actions.

The repository is intended as both a practical cloud infrastructure implementation and a portfolio project demonstrating production-oriented AWS architecture and Terraform engineering.

---

# Table of Contents

- Executive Summary
- Key Features
- Solution Architecture
- AWS Services
- Security Architecture
- Repository Structure
- Terraform Modules
- DevSecOps Pipeline
- Security Validation
- Deployment Guide
- Documentation
- Roadmap
- Contributing
- License
- Author

---

# Executive Summary

Modern healthcare platforms require cloud infrastructure that prioritizes confidentiality, integrity, availability, operational resilience, and continuous security monitoring.

This project demonstrates how Infrastructure-as-Code can be used to provision a secure AWS environment while applying cloud security best practices throughout the deployment lifecycle.

The platform incorporates networking, identity management, encryption, monitoring, logging, and security services into a reusable Terraform architecture that supports scalable application deployment.

Core engineering goals include:

- Infrastructure as Code using Terraform
- Modular infrastructure design
- Security-first architecture
- AWS Well-Architected design principles
- Continuous Infrastructure Validation
- DevSecOps automation
- Enterprise documentation
- Cloud governance

---

# 💻 Technology Stack

| Category | Technologies |
|-----------|--------------|
| Infrastructure as Code | Terraform |
| Cloud Platform | Amazon Web Services (AWS) |
| Container Platform | Amazon EKS |
| Container Registry | Amazon ECR |
| Networking | Amazon VPC, ALB, NAT Gateway |
| Database | Amazon RDS |
| Caching | Amazon ElastiCache (Redis) |
| Security | AWS IAM, AWS KMS, AWS WAF, AWS Secrets Manager |
| Monitoring | Amazon CloudWatch |
| Logging | AWS CloudTrail |
| Threat Detection | Amazon GuardDuty |
| Governance | AWS Security Hub, IAM Access Analyzer |
| CI/CD | GitHub Actions |
| Security Testing | Checkov, TFLint |


# ✨ Key Features

The UpCare MediConnect Cloud Platform is designed around enterprise cloud engineering principles and modern DevSecOps practices.

# 🏛 Design Principles

The project is built around the following engineering principles:

- Security by Design
- Least Privilege Access
- Infrastructure as Code
- Modular Architecture
- Automation First
- Reusability
- Scalability
- Operational Excellence
- Continuous Validation
- Cloud Governance

## 🏗 Infrastructure as Code (IaC)

- Modular Terraform architecture
- Reusable infrastructure modules
- Environment-ready deployment structure
- Version-controlled infrastructure
- Infrastructure automation using GitHub Actions

---

## 🔐 Enterprise Cloud Security

The platform adopts a security-first design by integrating native AWS security services throughout the infrastructure lifecycle.

Implemented security capabilities include:

- Customer-managed AWS KMS encryption
- Encryption at rest
- Encryption in transit
- AWS Secrets Manager integration
- IAM least-privilege access model
- AWS WAF protection
- HTTPS support using AWS Certificate Manager
- Default VPC Security Group hardening
- CloudTrail audit logging
- Amazon GuardDuty threat detection
- AWS Security Hub security posture management
- Amazon CloudWatch monitoring and alerting

---

## 🚀 DevSecOps Automation

Continuous integration and infrastructure quality assurance are implemented using GitHub Actions.

Automated workflows include:

- Terraform Formatting Validation
- Terraform Configuration Validation
- TFLint Static Analysis
- Checkov Security Scanning
- Automated Terraform Documentation Generation

---

## ☁ Scalability & Reliability

The platform is designed to support scalable cloud-native workloads through:

- Multi-tier VPC architecture
- Public and private subnet segmentation
- Application Load Balancer (ALB)
- Amazon EKS container orchestration
- Amazon RDS managed relational database
- Amazon ElastiCache for high-speed caching
- Modular networking components
- Secure service-to-service communication

---

# ☁ AWS Services

The project provisions and integrates a broad range of AWS services.

| Category | AWS Services |
|-----------|--------------|
| Networking | Amazon VPC, Public & Private Subnets, Route Tables, Internet Gateway, NAT Gateway |
| Compute | Amazon EKS |
| Containers | Amazon ECR |
| Load Balancing | Application Load Balancer (ALB) |
| Databases | Amazon RDS |
| Caching | Amazon ElastiCache (Redis) |
| Identity & Security | AWS IAM, AWS KMS, AWS Secrets Manager, AWS Certificate Manager (ACM), AWS WAF |
| Monitoring | Amazon CloudWatch |
| Logging & Governance | AWS CloudTrail, Amazon GuardDuty, AWS Security Hub, IAM Access Analyzer |
| Storage | Amazon S3 |

---

# 🏗 Solution Architecture

The infrastructure follows a layered architecture designed to separate networking, compute, data, security, and monitoring responsibilities.

```

                    Internet
                         │
                  Route 53 (Optional)
                         │
                  AWS WAF Web ACL
                         │
            Application Load Balancer
                         │
                 Amazon EKS Cluster
                         │
        ┌────────────────┴────────────────┐
        │                                 │
   Amazon RDS                    Amazon ElastiCache
        │                                 │
        └──────── AWS KMS Encryption ─────┘
                         │
                 AWS Secrets Manager
                         │
                AWS CloudTrail Logging
                         │
         GuardDuty • Security Hub • CloudWatch

```

The architecture emphasizes:

- Network segmentation
- Secure application delivery
- Encryption by default
- Centralized monitoring
- Infrastructure modularity
- Operational resilience
- Cloud governance

---

# 🔐 Security Architecture

Security is integrated throughout every layer of the platform.

## Identity & Access Management

- IAM Roles
- Least-Privilege Permissions
- AWS Secrets Manager
- Customer-managed KMS Keys

---

## Network Security

- Amazon VPC
- Public & Private Subnets
- Security Groups
- Network Segmentation
- AWS WAF
- HTTPS with ACM
- Restricted Default Security Group

---

## Data Protection

- AWS KMS Customer Managed Keys
- Encryption at Rest
- Encryption in Transit
- Secure Secret Storage
- Secure Database Configuration

---

## Threat Detection & Monitoring

- AWS CloudTrail
- Amazon GuardDuty
- AWS Security Hub
- Amazon CloudWatch
- Centralized Logging

---

## Infrastructure Security Validation

Every infrastructure change is automatically validated through the CI/CD pipeline using:

- Terraform Validate
- Terraform fmt
- TFLint
- Checkov
- terraform-docs

---

# 📁 Repository Structure

The repository is organized to promote modularity, maintainability, and separation of concerns.

```text
upcare-mediconnect-cloud-platform/

├── .github/
│   └── workflows/
│       ├── terraform.yml
│       ├── security.yml
│       ├── tflint.yml
│       └── terraform-docs.yml
│
├── application/
├── data/
├── diagrams/
├── docs/
├── kubernetes/
├── policies/
├── scripts/
├── templates/
│
├── terraform/
│   ├── environments/
│   ├── modules/
│   ├── backend.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── versions.tf
│   └── README.md
│
├── LICENSE
└── README.md
```

---

# 📦 Terraform Modules

The infrastructure is organized into reusable Terraform modules.

| Module | Purpose |
|---------|---------|
| VPC | Networking foundation |
| Security Groups | Network access control |
| IAM | Identity and access management |
| KMS | Customer-managed encryption keys |
| ACM | TLS certificate management |
| ALB | Application Load Balancer |
| WAF | Web Application Firewall |
| EKS | Kubernetes cluster |
| RDS | Relational database |
| ElastiCache | Redis caching layer |
| CloudTrail | Audit logging |
| CloudWatch | Monitoring and logging |
| GuardDuty | Threat detection |
| Security Hub | Security posture management |
| Secrets Manager | Secure secret storage |
| ECR | Container image registry |
| S3 | Secure object storage |
| Access Analyzer | IAM policy analysis |

---

# 🔄 DevSecOps Pipeline

Infrastructure quality is continuously validated using GitHub Actions.

| Stage | Tool | Purpose |
|--------|------|---------|
| Formatting | Terraform fmt | Enforce formatting standards |
| Validation | Terraform Validate | Validate Terraform configuration |
| Linting | TFLint | Detect Terraform best-practice issues |
| Security | Checkov | Detect infrastructure security risks |
| Documentation | terraform-docs | Generate module documentation |

---

# 🛡 Security Validation

Infrastructure changes are automatically validated before deployment.

Current validation includes:

- Terraform Configuration Validation
- Terraform Formatting
- Static Terraform Analysis
- Infrastructure Security Scanning
- Documentation Generation

The project is designed to promote secure Infrastructure-as-Code practices and continuous quality improvement.

---

# 🚀 Deployment

## Clone the Repository

```bash
git clone https://github.com/TaiwoGlobalCloud/upcare-mediconnect-cloud-platform.git
```

## Navigate to Terraform

```bash
cd upcare-mediconnect-cloud-platform/terraform
```

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Review the Execution Plan

```bash
terraform plan
```

> **Note:** This repository is intended as an Infrastructure-as-Code portfolio project. Review and customize variables, backend configuration, and AWS credentials before applying changes in your own AWS environment.

---

# 📚 Documentation

Additional documentation will continue to expand as the project evolves.

| Document | Description |
|----------|-------------|
| README.md | Project overview |
| terraform/README.md | Auto-generated Terraform module documentation |
| SECURITY.md | Security architecture and controls |
| docs/deployment-guide.md | Deployment instructions |
| docs/threat-model.md | Threat modeling (planned) |
| docs/security-controls.md | Security controls reference |
| diagrams/ | Architecture diagrams |

---

# 🛣 Roadmap

## Version 1.0

- Modular Terraform architecture
- GitHub Actions CI/CD
- Checkov integration
- TFLint integration
- Automated Terraform documentation



## Future Enhancements

- GitHub OIDC authentication
- AWS Config compliance monitoring
- Amazon Inspector integration
- Amazon Macie integration
- AWS Security Lake
- Cross-region disaster recovery
- Blue/Green deployment support
- Multi-account AWS Organizations deployment
- Automated compliance reporting
- Cost optimization dashboards

---

# 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

If you discover an issue or have ideas to improve the project, please open an Issue or submit a Pull Request.

---

# 📄 License

This project is licensed under the MIT License.

See the LICENSE file for details.

---

# 👨‍💻 Author

## Taiwo Justice Olorunlana

**Cloud Security Engineer | AWS | Terraform | DevSecOps | Infrastructure as Code | Cloud Governance**

### Connect

- GitHub: https://github.com/TaiwoGlobalCloud

---

## ⭐ Project Vision

The goal of this repository is to demonstrate enterprise-grade AWS infrastructure provisioning through Infrastructure-as-Code while emphasizing cloud security, automation, governance, and operational excellence.

The project serves as both a practical implementation and a continuous learning platform for modern cloud engineering and DevSecOps practices.

# ⚠ Disclaimer

This repository is intended for educational, research, and portfolio purposes.

Before deploying to a production AWS environment, review and adapt the configuration to your organization's security, compliance, networking, operational, and cost requirements.

