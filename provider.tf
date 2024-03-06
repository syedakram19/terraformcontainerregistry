terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
  
}

provider "azurerm" {
    features {}
  # Configuration options
  client_id = "f64266a0-72d5-4696-bea3-e1d77ff906bc"
  tenant_id = "9eccf677-e512-4797-98d9-aac3be8e9974"
  client_secret = "~nW8Q~f~t5zBdYJvSsmjVydWsZo_odnHMZ5NdbqD"
  subscription_id = "58ddc24e-dc8c-4cbb-8c5f-5d18cd37bd7d"

}