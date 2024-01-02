resource "dcloud_vm" "desktop" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13144580"
    name = "CentOS 7 Desktop"
    description = "CentOS 7 Desktop"
    os_family = "LINUX"

    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.6.50"
        mac_address = "00:50:56:ac:ac:04"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = true
        rdp_enabled = true
}

    remote_access {
        username           = var.desktop_admin_user
        password           = var.desktop_admin_pass
        vm_console_enabled = true

        display_credentials {
        username = var.desktop_admin_user
        password = var.desktop_admin_pass
        }
  } 

}  