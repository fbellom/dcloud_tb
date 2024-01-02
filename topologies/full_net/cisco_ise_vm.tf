resource "dcloud_vm" "cisco_ise" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13007432"
    name = "ISE"
    description = "ISE"


    network_interfaces {
        network_uid = dcloud_network.infra_network.id
        ip_address = "198.18.5.12"
        mac_address = "00:50:56:ac:ac:12"
        name = "Network adapter 1"
        type = "VIRTUAL_E1000"
        ssh_enabled = false
}

    remote_access {
        username           = var.ise_admin_user
        password           = var.ise_admin_pass
        vm_console_enabled = true

        display_credentials {
        username = var.ise_admin_user
        password = var.ise_admin_pass
        }
   }   
}  