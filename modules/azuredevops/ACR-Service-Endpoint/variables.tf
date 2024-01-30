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

variable "service_endpoint_name" {
  description = "The name of the service endpoint."
  type        = string
}

variable "project_id" {
  description = "The ID of the project."
  type        = string
}

variable "description" {
  description = "The description of the service endpoint."
  type        = string
}

variable "acr_spn_tenant_id" {
  description = "The tenant id of the service principal."
  type        = string
}

variable "acr_rg_name" {
  description = "The resource group to which the container registry belongs."
  type        = string
}

variable "acr_name" {
  description = " The Azure container registry name."
  type        = string
}

variable "acr_subscription_id" {
  description = "The subscription id of the Azure targets."
  type        = string
}

variable "acr_subscription_name" {
  description = "The subscription name of the Azure targets."
  type        = string
}
