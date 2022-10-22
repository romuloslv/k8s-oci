terraform {
  required_version = ">= 1.0.0"
  #required_providers { oci = { source  = "oracle/oci" } }
  backend "local" { path = "terraform/state/terraform.tfstate" }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
  fingerprint      = var.fingerprint
  private_key_path = var.ssh_private_key
  region           = var.region
}