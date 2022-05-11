resource "vsphere_host_virtual_switch" "switch" {
  name           = "vSwitchTerraformTest"
  host_system_id = data.vsphere_host.host.id

  network_adapters = ["vmnic1", "vmnic2"]

  active_nics  = ["vmnic1", "vmnic2"]
  standby_nics = []
}

resource "vsphere_host_port_group" "pg" {
  name                = "PGTerraformTest"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.switch.name
}