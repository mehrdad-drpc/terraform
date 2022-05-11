resource "vsphere_vmfs_datastore" "datastore" {
  name           = var.data_store_name
  host_system_id = data.vsphere_host.host.id

  disks = [
    "mpx.vmhba0:C0:T1:L0",
  ]
}
