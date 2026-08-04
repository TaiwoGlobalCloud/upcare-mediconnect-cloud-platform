#############################################
# ECR Outputs
#############################################

output "repository_urls" {
  description = "ECR repository URLs."

  value = {
    for key, repo in aws_ecr_repository.this :
    key => repo.repository_url
  }
}