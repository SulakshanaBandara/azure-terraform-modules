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

resource "azuredevops_serviceendpoint_kubernetes" "devops_serviceendpoint_kubernetes" {
  project_id            = var.project_id
  service_endpoint_name = var.service_endpoint_name
  apiserver_url         = var.apiserver_url
  authorization_type    = var.authorization_type
  description           = var.description

  kubeconfig {
    kube_config            = var.admin_kube_config
    accept_untrusted_certs = var.accept_untrusted_certs
    cluster_context        = var.cluster_context
  }
}
