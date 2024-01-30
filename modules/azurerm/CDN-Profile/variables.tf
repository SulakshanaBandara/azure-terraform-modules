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

variable "cdn_profile_name" {
  description = "The name of the CDN profile."
  type        = string
}

variable "location" {
  description = "The Azure Region in which the CDN endpoint should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the CDN endpoint."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "cdn_sku_profile" {
  description = "The pricing related information of current CDN profile."
  type        = string
}
