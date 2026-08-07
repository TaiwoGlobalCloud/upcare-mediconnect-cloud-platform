# 🚀 Deployment Guide

# UpCare MediConnect Cloud Platform

---

# Overview

This guide describes how to deploy the **UpCare MediConnect Cloud Platform** using Terraform.

The infrastructure is designed to be modular, reusable, and secure while following Infrastructure-as-Code (IaC) best practices.

This deployment guide assumes basic familiarity with AWS and Terraform.

---

# Deployment Workflow

```
Developer
     │
     ▼
Clone Repository
     │
     ▼
Terraform Init
     │
     ▼
Terraform Validate
     │
     ▼
Terraform Plan
     │
     ▼
Review Changes
     │
     ▼
Terraform Apply
     │
     ▼
AWS Infrastructure
```

---

# Prerequisites

Before deploying, ensure the following software is installed.

| Tool | Recommended Version |
|------|----------------------|
| Terraform | 1.14+ |
| AWS CLI | Latest |
| Git | Latest |
| Visual Studio Code | Latest |

---

# AWS Requirements

You should have:

- AWS Account
- IAM User or IAM Role
- Programmatic Access
- Appropriate AWS Permissions

Recommended permissions include:

- Amazon VPC
- IAM
- Amazon EKS
- Amazon RDS
- Amazon S3
- AWS KMS
- AWS Secrets Manager
- CloudTrail
- GuardDuty
- Security Hub
- CloudWatch

---

# Clone the Repository

```bash
git clone https://github.com/TaiwoGlobalCloud/upcare-mediconnect-cloud-platform.git
```

Navigate into the project.

```bash
cd upcare-mediconnect-cloud-platform
```

---

# Navigate to Terraform

```bash
cd terraform
```

---

# Initialize Terraform

Initialize Terraform and download required providers.

```bash
terraform init
```

Expected output:

```
Terraform has been successfully initialized!
```

---

# Validate the Configuration

Validate the Terraform configuration before deployment.

```bash
terraform validate
```

Expected output:

```
Success! The configuration is valid.
```

---

# Format Terraform Files

Ensure Terraform formatting is consistent.

```bash
terraform fmt -recursive
```

---

# Review the Execution Plan

Generate an execution plan.

```bash
terraform plan
```

Carefully review:

- Resources to be created
- Resources to be modified
- Resources to be destroyed

---

# Apply Infrastructure

Deploy the infrastructure.

```bash
terraform apply
```

Terraform will request confirmation.

```
Enter a value:

yes
```

---

# Verify Deployment

After deployment, verify:

- VPC
- Public Subnets
- Private Subnets
- Route Tables
- Security Groups
- Application Load Balancer
- Amazon EKS
- Amazon RDS
- Amazon ElastiCache
- AWS WAF
- AWS KMS
- Secrets Manager
- CloudTrail
- GuardDuty
- Security Hub

using the AWS Management Console or AWS CLI.

---

# Terraform State

Terraform stores infrastructure state to track deployed resources.

When working in a team environment, use a remote backend such as:

- Amazon S3
- DynamoDB state locking

---

# Updating Infrastructure

After modifying Terraform code:

```bash
terraform validate

terraform plan

terraform apply
```

Always review the execution plan before applying changes.

---

# Destroy Infrastructure

To remove deployed resources:

```bash
terraform destroy
```

Review all resources scheduled for deletion before confirming.

---

# CI/CD Integration

The repository includes GitHub Actions workflows that automatically perform:

- Terraform Formatting Validation
- Terraform Validation
- TFLint Analysis
- Checkov Security Scanning
- Terraform Documentation Generation

These automated checks help maintain infrastructure quality and consistency.

---

# Security Considerations

Before deploying to production:

- Review IAM permissions.
- Store secrets in AWS Secrets Manager.
- Use customer-managed KMS keys.
- Enable CloudTrail logging.
- Review Security Hub findings.
- Enable GuardDuty.
- Protect internet-facing applications with AWS WAF.
- Restrict Security Group rules to the minimum required.

---

# Troubleshooting

## Terraform Initialization Fails

Verify:

- Internet connectivity
- Terraform version
- AWS credentials

---

## AWS Authentication Errors

Check:

```bash
aws configure
```

Confirm:

- AWS Access Key
- AWS Secret Access Key
- Region
- Output format

---

## Terraform Validation Errors

Run:

```bash
terraform validate
```

Review the reported configuration errors before continuing.

---

## Checkov Findings

Security findings should be reviewed individually.

Some findings may represent intentional design decisions (for example, HTTP port 80 on the Application Load Balancer is used solely to redirect traffic to HTTPS).

---

# Best Practices

- Use Infrastructure as Code for all changes.
- Review Terraform plans before applying.
- Apply the principle of least privilege.
- Encrypt sensitive resources.
- Keep Terraform modules modular and reusable.
- Enable continuous validation through GitHub Actions.
- Monitor deployed resources continuously.

---

# References

- Terraform Documentation
- AWS Well-Architected Framework
- AWS Security Best Practices
- CIS AWS Foundations Benchmark
- NIST Cybersecurity Framework