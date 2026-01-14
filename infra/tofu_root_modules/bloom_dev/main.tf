terraform {
  required_providers {
    aws = {
      version = "6.21.0"
      source  = "hashicorp/aws"
    }
  }
  cloud {
    # TODO: connect to Terraform Enterprise workspace
  }
}

locals {
  bloom_deployment = "bloom-dev"

  bloom_aws_account_number = 0000 # TODO
  bloom_aws_region         = "us-west-2"
  domain_name              = "TODO"
}

# AWS gets credentials from environment variables set in the Terraform Enterprise workspace:
# https://developer.hashicorp.com/terraform/language/backend#define-a-backend-block
provider "aws" {
  region = local.bloom_aws_region
}

# We need to create and validate a certificate for bloom_deployment module to deploy
# successfully. See the README.md for more details for how to deploy and validate the certificate
# before deploying the bloom_deployment module.
resource "aws_acm_certificate" "bloom" {
  region            = local.bloom_aws_region
  validation_method = "DNS"
  domain_name       = local.domain_name
  subject_alternative_names = [
    "partners.${local.domain_name}"
  ]
  lifecycle {
    create_before_destroy = true
  }
}
output "certificate_details" {
  value = {
    certificate_arn    = aws_acm_certificate.bloom.arn
    certificate_status = aws_acm_certificate.bloom.status
    expires_at         = aws_acm_certificate.bloom.not_after
    managed_renewal = {
      eligible = aws_acm_certificate.bloom.renewal_eligibility
      status   = aws_acm_certificate.bloom.renewal_summary
    }
    validation_dns_recods = aws_acm_certificate.bloom.domain_validation_options
  }
  description = "DNS records required to be manually added for the LB TLS certificate to be issued."
}

variable "only_deploy_aws_certificate" {
  type        = bool
  description = "Causes only the AWS certificate to be deployed. Once the certificate is validated, flip to false and redeploy to deploy the rest of Bloom infra."
  default     = true
}

# Deploy bloom into the account.
module "bloom_deployment" {
  count  = var.only_deploy_aws_certificate ? 0 : 1
  source = "../../tofu_importable_modules/bloom_deployment"

  aws_account_number = local.bloom_aws_account_number
  aws_region         = local.bloom_aws_region

  domain_name         = aws_acm_certificate.bloom.domain_name
  aws_certificate_arn = aws_acm_certificate.bloom.arn

  env_type          = "dev"
  high_availability = false

  bloom_api_image           = "ghcr.io/bloom-housing/bloom-la/api:gitsha-7204cda0958f39d215676a4961da5bd42a34a4ba"
  bloom_site_partners_image = "ghcr.io/bloom-housing/bloom-la/partners:gitsha-7204cda0958f39d215676a4961da5bd42a34a4ba"
  bloom_site_public_image   = "ghcr.io/bloom-housing/bloom-la/public:gitsha-7204cda0958f39d215676a4961da5bd42a34a4ba"
  bloom_site_public_env_vars = {
    JURISDICTION_NAME = "LA"
    LANGUAGES         = "en,es,zh,vi,tl"
    RTL_LANGUAGES     = "ar"
  }
}
output "aws_lb_dns_name" {
  # need to use 'one()' func here because using the 'count' pattern above turns
  # module.bloom_deployment into a list of values instead of just one value.
  value       = one(module.bloom_deployment[*].lb_dns_name)
  description = "DNS name of the load balancer."
}
