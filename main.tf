terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    name = string
    name_prefix = string
    path = string
    description = string
    policy = string
  })
}

resource "aws_iam_policy" "default_object" {
  name = var.values.name
  name_prefix = var.values.name_prefix
  path = var.values.path
  description = var.values.description
  policy = var.values.policy
  tags = var.values.tags
}
