# The configuration for the `remote` backend.
terraform {
  backend "remote" {
  # The name of your Terraform Cloud organization.
  organization = "jalaanil-org"
  # The name of the Terraform Cloud workspace to store Terraform state files in.
  workspaces {
       name = "test_workspace"
      }
  }
}


variable "prefix" {
	default ="akjcoregh1"
}

variable "location" {
	default ="Switzerland North"
}

