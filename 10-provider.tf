

terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.15.0"
    }
  }
}


provider "vsphere" {
  vsphere_server = var.vsphere.vsphere_server
  user           = var.vsphere.user
  password       = var.vsphere.password

  allow_unverified_ssl = var.vsphere.allow_unverified_ssl

}