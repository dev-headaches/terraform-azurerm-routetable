terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
    }
  }
}

resource "azurerm_route_table" "rt_table" {
  name                          = var.tablename
  location                      = var.location
  resource_group_name           = var.rgname
  disable_bgp_route_propagation = var.disable_bgp_rt_prop
}

resource "azurerm_subnet_route_table_association" "rt_assoc" {
  subnet_id      = var.AssocSubnet_id
  route_table_id = azurerm_route_table.rt_table.id
}