# The configuration for the `remote` backend.
terraform {
  /*backend "remote" {
  # The name of your Terraform Cloud organization.
  organization = "jalaanil-org"
  # The name of the Terraform Cloud workspace to store Terraform state files in.
  workspaces {
       name = "test_workspace"
      }
  }*/

  backend "azurerm" {
      /*use_azuread_auth     = true */
      tenant_id            = "d68a238a-c112-4e92-82be-5f67eb3da666"  
      client_id            = "40cb5fa5-6890-4bb8-8076-92dbaf67b109" 
      client_secret        = "XNc8Q~F86DTYRsRKqgSuaAhYqHekkJGnzMYItccx" 
      resource_group_name  = "tfstate"
      storage_account_name = "akjtfstorage"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"		
    }
  }  
}

provider "azurerm" {
  	/*subscription_id      = "b483ceb2-d286-400a-bcae-7d8fd01b0d75"
    tenant_id            = "d68a238a-c112-4e92-82be-5f67eb3da666" 
    client_id            = "40cb5fa5-6890-4bb8-8076-92dbaf67b109" 
    client_secret        = "XNc8Q~F86DTYRsRKqgSuaAhYqHekkJGnzMYItccx" */
	features {}
}

variable "prefix" {
	default ="akjcoregh1"
}

variable "location" {
	default ="Switzerland North"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}

