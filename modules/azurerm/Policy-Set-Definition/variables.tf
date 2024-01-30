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

variable "policy_set_definition_name" {
  description = "The name of the policy set definition to be created"
  type        = string
}

variable "policy_set_definition_display_name" {
  description = "The display name of the policy set definition to be created"
  type        = string
}

variable "policy_type" {
  description = "The policy set type. Possible values are BuiltIn, Custom, NotSpecified and Static. Changing this forces a new resource to be created."
  type        = string
}

variable "description" {
  description = "The description of the policy definition."
  type        = string
}

variable "metadata" {
  default     = ""
  description = "The metadata for the policy set definition. This is a JSON object representing additional metadata that should be stored with the policy definition."
  type        = string
}

variable "policy_definition_reference" {
  description = "The policy definition reference block."
  type = list(object({
    policy_definition_id = string
    parameter_values     = string
    reference_id         = string
  }))
}

variable "parameters" {
  description = "Parameters for the policy set definition. This field is a JSON object that allows you to parameterize your policy definition."
  type        = string
}
