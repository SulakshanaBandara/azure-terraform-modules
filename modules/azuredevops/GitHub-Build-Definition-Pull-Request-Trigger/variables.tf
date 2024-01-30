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

variable "build_definition_name" {
  description = "The name of the build definition."
  type        = string
}

variable "project_id" {
  description = "The ID of the project."
  type        = string
}

variable "github_service_connection_id" {
  description = "The ID of the GitHub service connection."
  type        = string
}

variable "github_org_name" {
  description = "The name of the GitHub organization."
  type        = string
}

variable "github_repo_name" {
  description = "The name of the GitHub repository."
  type        = string
}

variable "yml_path" {
  description = "The path to the YAML file."
  type        = string
}

variable "branch_name" {
  description = "The name of the branch."
  type        = string
}

variable "pipeline_path" {
  default     = "\\"
  description = "The path to the pipeline."
  type        = string
}

variable "initial_branch" {
  default     = null
  description = "When use_yaml is true set this to the name of the branch that the azure-pipelines.yml exists on."
  type        = string
}

variable "pull_request_trigger_use_yaml" {
  default     = false
  description = "Use the azure-pipeline file for the build configuration."
  type        = bool
}

variable "forks_enabled" {
  default     = false
  description = "Build pull requests from forks of this repository."
  type        = bool
}

variable "forks_share_secrets" {
  default     = false
  description = "Make secrets available to builds of forks."
  type        = bool
}

variable "agent_pool_name" {
  default     = "Azure Pipelines"
  description = "The name of the agent pool."
  type        = string
}

variable "repo_type" {
  default     = "GitHub"
  description = "The type of the repository."
  type        = string
}
