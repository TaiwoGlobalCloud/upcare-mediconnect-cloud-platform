# 🛡 Threat Model

# UpCare MediConnect Cloud Platform

---

# Overview

This document presents the threat model for the **UpCare MediConnect Cloud Platform** using the **STRIDE** methodology.

The objective is to identify potential security threats across the cloud infrastructure and document the controls implemented to reduce risk.

The platform follows a defense-in-depth strategy by combining AWS native security services, Infrastructure-as-Code (IaC), continuous validation, and cloud governance.

---

# Threat Modeling Methodology

The project uses Microsoft's **STRIDE** framework.

| Threat Category | Description |
|-----------------|-------------|
| **S** | Spoofing Identity |
| **T** | Tampering with Data |
| **R** | Repudiation |
| **I** | Information Disclosure |
| **D** | Denial of Service |
| **E** | Elevation of Privilege |

---

# System Components

The threat model covers the following AWS services:

- Amazon VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Application Load Balancer (ALB)
- AWS WAF
- Amazon EKS
- Amazon RDS
- Amazon ElastiCache
- AWS IAM
- AWS KMS
- AWS Secrets Manager
- Amazon CloudWatch
- AWS CloudTrail
- Amazon GuardDuty
- AWS Security Hub
- Amazon ECR

---

# STRIDE Analysis

## 1. Spoofing Identity

### Threat

An attacker attempts to impersonate a legitimate AWS identity, service, or user.

### Mitigations

- IAM Roles
- Least Privilege Policies
- AWS Secrets Manager
- Customer Managed KMS Keys
- IAM Access Analyzer

### Residual Risk

Low

---

## 2. Tampering

### Threat

Unauthorized modification of infrastructure, configuration, or stored data.

### Mitigations

- Terraform Infrastructure as Code
- GitHub Version Control
- Customer Managed KMS Encryption
- CloudTrail Audit Logging
- GitHub Actions Validation

### Residual Risk

Low

---

## 3. Repudiation

### Threat

Users deny performing actions within the AWS environment.

### Mitigations

- AWS CloudTrail
- CloudWatch Logs
- Infrastructure Version Control
- Git Commit History

### Residual Risk

Low

---

## 4. Information Disclosure

### Threat

Sensitive information is exposed to unauthorized users.

### Mitigations

- AWS KMS Encryption
- AWS Secrets Manager
- Private Subnets
- Security Groups
- HTTPS using ACM

### Protected Assets

- Database Credentials
- Application Secrets
- Encryption Keys
- Healthcare Application Data

### Residual Risk

Medium-Low

---

## 5. Denial of Service

### Threat

Attackers attempt to disrupt application availability.

### Mitigations

- AWS WAF
- Application Load Balancer
- Security Groups
- Network Segmentation

### Future Enhancements

- AWS Shield Advanced
- Auto Scaling Policies
- Rate Limiting Rules

### Residual Risk

Medium

---

## 6. Elevation of Privilege

### Threat

An attacker gains permissions beyond their intended authorization.

### Mitigations

- Least Privilege IAM
- IAM Access Analyzer
- Customer Managed Policies
- Security Hub Findings

### Residual Risk

Low

---

# Threat Summary Matrix

| STRIDE Category | Primary Controls | Risk |
|-----------------|------------------|------|
| Spoofing | IAM, Secrets Manager | Low |
| Tampering | Terraform, CloudTrail, GitHub | Low |
| Repudiation | CloudTrail, CloudWatch | Low |
| Information Disclosure | KMS, Secrets Manager, HTTPS | Medium-Low |
| Denial of Service | WAF, ALB, Security Groups | Medium |
| Elevation of Privilege | IAM, Access Analyzer | Low |

---

# Layered Security Model

The platform applies defense in depth across multiple layers.

| Layer | Security Controls |
|-------|-------------------|
| Identity | IAM, Least Privilege |
| Network | VPC, Security Groups, WAF |
| Compute | Amazon EKS |
| Data | RDS Encryption, ElastiCache Encryption |
| Secrets | AWS Secrets Manager |
| Monitoring | CloudWatch |
| Logging | CloudTrail |
| Threat Detection | GuardDuty |
| Governance | Security Hub |

---

# Assumptions

This threat model assumes:

- AWS best practices are followed.
- IAM credentials are managed securely.
- Terraform is the authoritative deployment mechanism.
- Production secrets are not stored in source code.
- Customer-managed KMS keys protect sensitive resources.

---

# Planned Risk Reductions

Future security improvements include:

- AWS Config
- Amazon Inspector
- Amazon Macie
- AWS Security Lake
- GitHub OIDC Authentication
- Organization-wide GuardDuty
- Service Control Policies (SCPs)
- Centralized logging architecture

---

# Conclusion

The UpCare MediConnect Cloud Platform incorporates layered security controls to reduce risk across identity, networking, data protection, monitoring, and governance.

Using the STRIDE framework helps identify potential threats early in the design process and demonstrates how Infrastructure-as-Code can support secure, repeatable, and auditable cloud deployments.