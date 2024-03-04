resource "dcloud_vm" "server" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13208143"
    name = "TRex Server"
    description = "TRex Server"
    os_family = "LINUX"
    cpu_qty = 8
    memory_mb = 32768

    network_interfaces {
        network_uid = dcloud_network.routed_network.id
        ip_address = "198.18.1.50"
        mac_address = "00:50:56:ac:aa:01"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = true
        rdp_enabled = true
}    

    network_interfaces {
        network_uid = dcloud_network.server_network.id
        ip_address = "198.18.5.50"
        mac_address = "00:50:56:ac:ab:01"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"

}

    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.6.50"
        mac_address = "00:50:56:ac:ac:03"
        name = "Network adapter 3"
        type = "VIRTUAL_VMXNET_3"

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