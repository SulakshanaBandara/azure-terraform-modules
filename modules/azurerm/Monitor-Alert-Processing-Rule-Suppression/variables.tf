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

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "monitor_alert_processing_rule_suppression_name" {
  description = "Name of the Monitor Alert Processing Rule Suppression"
  type        = string
}

variable "tags" {
  description = "Tags for the Resource"
  type        = map(string)
}

variable "start_time" {
  description = "Start Time for the rule schedule"
  type        = string
}

variable "end_time" {
  description = "End Time for the rule schedule"
  type        = string
}

variable "time_zone" {
  default     = "Sri Lanka Standard Time"
  description = "Time Zone for the rule schedule"
  type        = string
}

variable "scope" {
  description = "Scope for the rule"
  type        = string
}

variable "days_of_week" {
  description = "The days of the week the schedule should run"
  type        = list(string)
}
