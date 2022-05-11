data "vsphere_datacenter" "dc" {
  name = "dc1"
}

data "vsphere_datastore" "datastore" {
  name          = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_host" "host" {
  name          = "esxi1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = "cluster1/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = vsphere_host_port_group.pg.name
  datacenter_id = data.vsphere_datacenter.dc.id
}

# data "vsphere_network" "vm_network" {
#   name          = "PGTerraformTest"
#   datacenter_id = data.vsphere_datacenter.dc.id
# }

# data "vsphere_virtual_machine" "template" {
#   name          = "terraform-test"
#   datacenter_id = data.vsphere_datacenter.dc.id
# }
