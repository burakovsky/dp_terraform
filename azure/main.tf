# Configure the Azure Provider
provider "azurerm" {}

# Create a resource group
module "rg" {
  source        = "./modules/rg"
  azure_rg_name = "${var.azure_rg_name}"
  azure_region  = "${var.azure_region}"
  environment   = "${var.environment}"
}
