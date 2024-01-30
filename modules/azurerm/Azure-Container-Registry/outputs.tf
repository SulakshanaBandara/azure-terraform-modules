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

output "acr_login_server" {
  depends_on = [azurerm_container_registry.acr]
  value      = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  depends_on = [azurerm_container_registry.acr]
  value      = azurerm_container_registry.acr.admin_username
}

output "acr_admin_password" {
  depends_on = [azurerm_container_registry.acr]
  value      = azurerm_container_registry.acr.admin_password
}

output "acr_name" {
  depends_on = [azurerm_container_registry.acr]
  value      = azurerm_container_registry.acr.name
}

output "container_registry_id" {
  depends_on = [azurerm_container_registry.acr]
  value      = azurerm_container_registry.acr.id
}
