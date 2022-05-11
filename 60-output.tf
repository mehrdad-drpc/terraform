output "datacenter" {
  value = data.vsphere_datacenter.dc.id
}

output "datastore_id" {
  value = data.vsphere_datastore.datastore.id
}

output "host" {
  value = data.vsphere_host.host.id
}

output "network" {
  value = data.vsphere_network.network.id
}

output "pool" {
  value = data.vsphere_resource_pool.pool.id
}

# output "guest_id" {
#   value = data.vsphere_virtual_machine.template.guest_id
# }