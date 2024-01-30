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

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "backup_policy_file_share_name" {
  description = "The name of the backup policy for file share"
  type        = string
}

variable "location" {
  description = "Azure location where the resource exists"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the EventHub Namespace exists"
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
}

variable "tags" {
  description = "Tags to be used in resources"
  type        = map(string)
}

variable "recovery_vault_name" {
  description = "Name of the Recovery Vault"
  type        = string
}

variable "daily_backup_time" {
  default     = "23:00"
  description = "Time of the day when the backup should be taken"
  type        = string
}

variable "daily_retention" {
  default     = "7"
  description = "Number of days to retain the backup"
  type        = string
}

variable "storage_account_network_rules_default_action" {
  default     = "Allow"
  description = "The default action of allow or deny when no other rules match"
  type        = string
}

variable "storage_account_network_rules_bypass" {
  default     = ["AzureServices", "Metrics"]
  description = "Specifies which traffic can bypass the network rules"
  type        = list(string)
}

variable "storage_account_network_rules_ip_rules" {
  default     = []
  description = "List of public IP or IP ranges in CIDR format"
  type        = list(string)
}

variable "storage_account_network_rules_virtual_network_subnet_ids" {
  default     = []
  description = "List of virtual network subnet IDs"
  type        = list(string)
}

variable "allow_nested_items_to_be_public" {
  default     = false
  description = "Allow or disallow nested items within this Account to opt into being public"
  type        = bool
}

variable "advanced_threat_protection_enabled" {
  default     = true
  description = "Enable Advance Threat protection for Storage account"
  type        = bool
}
