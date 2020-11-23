# "Terraform block" defined witch provider(s) to download from the Terraform registry
terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws" # hashicorp/aws shorthand for registry.terraform.io/hashicorp/aws
      version = "~> 2.70"
    }
  }
}

# "provider block" configures the named provider
# witch is responsible for creating and managing resources
provider "aws" {
  profile = var.profile
  region  = var.region
}

# "resource block" defines a pice of the infrastructure
# resource key + provider resource type + resource name
resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
