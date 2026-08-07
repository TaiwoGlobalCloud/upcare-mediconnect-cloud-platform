# UpCare MediConnect Terraform Infrastructure

This directory contains the Infrastructure as Code (IaC) for the **UpCare MediConnect Cloud Platform**.

## Overview

The Terraform configuration provisions a secure, scalable, and production-ready AWS cloud infrastructure following Infrastructure as Code (IaC) best practices.

## Terraform Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | ~> 2.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.57.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_access_analyzer"></a> [access\_analyzer](#module\_access\_analyzer) | ./modules/access-analyzer | n/a |
| <a name="module_acm"></a> [acm](#module\_acm) | ./modules/acm | n/a |
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_cloudtrail"></a> [cloudtrail](#module\_cloudtrail) | ./modules/cloudtrail | n/a |
| <a name="module_cloudwatch"></a> [cloudwatch](#module\_cloudwatch) | ./modules/cloudwatch | n/a |
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ./modules/ecr | n/a |
| <a name="module_eks"></a> [eks](#module\_eks) | ./modules/eks | n/a |
| <a name="module_elasticache"></a> [elasticache](#module\_elasticache) | ./modules/elasticache | n/a |
| <a name="module_guardduty"></a> [guardduty](#module\_guardduty) | ./modules/guardduty | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ./modules/iam | n/a |
| <a name="module_kms"></a> [kms](#module\_kms) | ./modules/kms | n/a |
| <a name="module_rds"></a> [rds](#module\_rds) | ./modules/rds | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 | n/a |
| <a name="module_secrets_manager"></a> [secrets\_manager](#module\_secrets\_manager) | ./modules/secrets-manager | n/a |
| <a name="module_security_groups"></a> [security\_groups](#module\_security\_groups) | ./modules/security-groups | n/a |
| <a name="module_security_hub"></a> [security\_hub](#module\_security\_hub) | ./modules/security-hub | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |
| <a name="module_waf"></a> [waf](#module\_waf) | ./modules/waf | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_enable_deletion_protection"></a> [alb\_enable\_deletion\_protection](#input\_alb\_enable\_deletion\_protection) | Enable deletion protection for the Application Load Balancer. | `bool` | `false` | no |
| <a name="input_alb_internal"></a> [alb\_internal](#input\_alb\_internal) | Whether the Application Load Balancer is internal. | `bool` | `false` | no |
| <a name="input_analyzer_type"></a> [analyzer\_type](#input\_analyzer\_type) | IAM Access Analyzer type. | `string` | `"ACCOUNT"` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Availability Zones. | `list(string)` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region. | `string` | n/a | yes |
| <a name="input_buckets"></a> [buckets](#input\_buckets) | Configuration for S3 buckets. | <pre>map(object({<br/>    versioning     = bool<br/>    force_destroy  = bool<br/>    lifecycle_days = number<br/>  }))</pre> | n/a | yes |
| <a name="input_certificate_validation_method"></a> [certificate\_validation\_method](#input\_certificate\_validation\_method) | ACM certificate validation method. | `string` | `"DNS"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Amazon EKS cluster name. | `string` | `"upcare-eks"` | no |
| <a name="input_db_instance_class"></a> [db\_instance\_class](#input\_db\_instance\_class) | RDS instance class. | `string` | `"db.t3.micro"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Database name. | `string` | `"upcare"` | no |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Database administrator password. | `string` | `"ChangeMe123!"` | no |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Database administrator username. | `string` | `"postgres"` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | KMS deletion window. | `number` | `30` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of worker nodes. | `number` | `2` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Primary domain name for the ACM certificate. | `string` | n/a | yes |
| <a name="input_enable_guardduty"></a> [enable\_guardduty](#input\_enable\_guardduty) | Enable Amazon GuardDuty. | `bool` | `true` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Enable KMS key rotation. | `bool` | `true` | no |
| <a name="input_enable_log_file_validation"></a> [enable\_log\_file\_validation](#input\_enable\_log\_file\_validation) | Enable CloudTrail log validation. | `bool` | `true` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Enable NAT Gateway. | `bool` | n/a | yes |
| <a name="input_enable_security_hub"></a> [enable\_security\_hub](#input\_enable\_security\_hub) | Enable AWS Security Hub. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment. | `string` | n/a | yes |
| <a name="input_is_multi_region_trail"></a> [is\_multi\_region\_trail](#input\_is\_multi\_region\_trail) | Deploy multi-region trail. | `bool` | `true` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version. | `string` | `"1.33"` | no |
| <a name="input_log_retention_days"></a> [log\_retention\_days](#input\_log\_retention\_days) | CloudWatch log retention. | `number` | `365` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of worker nodes. | `number` | `4` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of worker nodes. | `number` | `2` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | Private subnet CIDRs. | `list(string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name. | `string` | n/a | yes |
| <a name="input_public_access_cidrs"></a> [public\_access\_cidrs](#input\_public\_access\_cidrs) | CIDR blocks allowed to access the EKS public endpoint. | `list(string)` | <pre>[<br/>  "203.0.113.0/24"<br/>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | Public subnet CIDRs. | `list(string)` | n/a | yes |
| <a name="input_redis_auth_token"></a> [redis\_auth\_token](#input\_redis\_auth\_token) | Redis AUTH token for ElastiCache. | `string` | n/a | yes |
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | Redis node type. | `string` | `"cache.t3.micro"` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | GitHub repository. | `string` | n/a | yes |
| <a name="input_repository_names"></a> [repository\_names](#input\_repository\_names) | ECR repositories. | `list(string)` | <pre>[<br/>  "backend",<br/>  "frontend",<br/>  "ai-services"<br/>]</pre> | no |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | Subject Alternative Names (SANs) for the ACM certificate. | `list(string)` | `[]` | no |
| <a name="input_trail_name"></a> [trail\_name](#input\_trail\_name) | CloudTrail name. | `string` | `"upcare-cloudtrail"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR. | `string` | n/a | yes |
| <a name="input_waf_scope"></a> [waf\_scope](#input\_waf\_scope) | AWS WAF scope. | `string` | `"REGIONAL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_account_id"></a> [aws\_account\_id](#output\_aws\_account\_id) | AWS Account ID. |
| <a name="output_aws_region"></a> [aws\_region](#output\_aws\_region) | AWS Region. |
<!-- END_TF_DOCS -->