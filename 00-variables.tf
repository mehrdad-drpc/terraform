variable "vm_name" {
  type        = string
  description = "Virtual Machine Name"
  default     = "terraform-test"
}

variable "data_store_name" {
  type        = string
  description = "The name of vmWare datastore"
  default     = "terraform-datastore-test"
}

# variable "resource_pool" {
#   type    = string
#   default = "ha-root-pool"
# }

# variable "datastore_id" {
#   type    = string
#   default = "6255510e-9e8d6d8b-3dab-000c2970bf86"
# }

variable "num_cpus" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 1024
}

variable "guest_id" {
  type    = string
  default = "other3xLinux64Guest"
}

# variable "network_id" {
#   type    = string
#   default = "HaNetwork-VM Network"
# }

variable "disk" {
  type = object({
    size  = number
    label = string
  })
  default = {
    label = "disk0"
    size  = 20
  }
}

variable "vsphere" {
  type = object({
    user                 = string
    password             = string
    vsphere_server       = string
    allow_unverified_ssl = bool
  })
  default = {
    user           = "root"
    password       = "123!@#qweQWE"
    vsphere_server = "172.29.3.21"
    # user                 = "pam@vsphere.local"
    # password             = "s$8f<@C[Q3SqbVyr"
    # vsphere_server       = "vcsa.spara.ir"
    allow_unverified_ssl = true
  }

}
