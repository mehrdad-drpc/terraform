
resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = data.vsphere_resource_pool.pool.id
  # datastore_id     = data.vsphere_datastore.datastore.id
  datastore_id = vsphere_vmfs_datastore.datastore.id

  num_cpus = var.num_cpus
  memory   = var.memory
  guest_id = var.guest_id
  # guest_id = data.vsphere_virtual_machine.template.id

  network_interface {
    network_id = data.vsphere_network.network.id
    # network_id = vsphere_host_port_group.pg.name
    # network_id = vsphere_host_virtual_switch.switch.name
  }

  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  disk {
    label = var.disk.label
    size  = var.disk.size
  }

}
