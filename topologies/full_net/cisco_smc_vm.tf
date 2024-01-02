resource "dcloud_vm" "cisco_smc" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13358017"
    name = "SMC"
    description = "SMC"


    network_interfaces {
        network_uid = dcloud_network.infra_network.id
        ip_address = "198.18.5.13"
        mac_address = "00:50:56:ac:ac:13"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
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

resource "dcloud_vm" "cisco_flow" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13077998"
    name = "FLOW"
    description = "FLOW"


    network_interfaces {
        network_uid = dcloud_network.infra_network.id
        ip_address = "198.18.5.14"
        mac_address = "00:50:56:ac:ac:14"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
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