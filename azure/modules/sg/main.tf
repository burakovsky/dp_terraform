resource "azurerm_network_security_group" "test" {
  name                = "${var.azure_sg_name}"
  location            = "${var.azure_location}"
  resource_group_name = "${var.azure_rg_name}"

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags {
    
    environment = "${var.environment}"
  }
