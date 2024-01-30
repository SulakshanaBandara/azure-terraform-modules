# -------------------------------------------------------------------------------------
#
# Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

resource "azurerm_subnet" "subnet" {
  name                                          = join("-", ["snet", var.subnet_name])
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.address_prefix
  service_endpoints                             = var.service_endpoints
  private_link_service_network_policies_enabled = var.enforce_private_link_service_network_policies
  private_endpoint_network_policies_enabled     = var.enforce_private_link_endpoint_network_policies

  dynamic "delegation" {
    for_each = var.delegation

    content {
      name = delegation.value["delegation_name"]

      service_delegation {
        name    = delegation.value["service_delegation_name"]
        actions = delegation.value["service_delegation_actions"]
      }
    }
  }
}
