terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.34"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.10"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.22"
    }
  }

  #  Used for end-to-end testing on project; update to suit your needs
  backend "s3" {
    bucket = "$TERRAFORM_STATE_NAME"
    region = "$AWS_REGION"
    key    = "terraform.tfstate"
  }
}
