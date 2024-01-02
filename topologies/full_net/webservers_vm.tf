resource "dcloud_vm" "web_server_01" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13208143"
    name = "WebServer 01"
    description = "CentOS 7 WebServer 01"
    os_family = "LINUX"

    network_interfaces {
        network_uid = dcloud_network.datacenter_network.id
        ip_address = "198.18.6.50"
        mac_address = "00:50:56:ac:ac:03"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = false
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

resource "dcloud_vm" "web_server_02" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13208143"
    name = "WebServer 02"
    description = "CentOS 7 WebServer 02"
    os_family = "LINUX"

    network_interfaces {
        network_uid = dcloud_network.datacenter_network.id
        ip_address = "198.18.6.51"
        mac_address = "00:50:56:ac:ac:04"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = false
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