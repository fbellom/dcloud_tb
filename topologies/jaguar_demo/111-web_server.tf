resource "dcloud_vm" "web_server" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13208143"
    name = "CentOS 7 Server"
    description = "CentOS 7 Server"
    os_family = "LINUX"

    network_interfaces {
        network_uid = dcloud_network.dmz_network.id
        ip_address = "198.18.20.100"
        mac_address = "00:50:56:ac:ac:03"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = true
}

    remote_access {
        username           = var.server_admin_user
        password           = var.server_admin_pass
        vm_console_enabled = true

        display_credentials {
        username = var.server_admin_user
        password = var.server_admin_pass
        }
  }   

}     