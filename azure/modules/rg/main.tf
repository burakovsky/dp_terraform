resource "azurerm_resource_group" "rg" {
  name     = "${var.azure_rg_name}"
  location = "${var.azure_region}"

  tags {
    environment = "${var.environment}"
    role        = "resource_group"
  }
}
