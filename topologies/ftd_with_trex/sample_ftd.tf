resource "dcloud_vm" "ftdv" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13032829"
    name = "Secure Firewall Threat Defense"
    description = "Secure Firewall Threat Defense"

    network_interfaces {
        # Management Interface
        network_uid = dcloud_network.routed_network.id
        ip_address = "198.18.1.11"
        mac_address = "00:50:56:aa:aa:a4"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = true
    }
        network_interfaces {
        # Diagnostic Interface   
        network_uid = dcloud_network.routed_network.id
        ip_address = "127.0.0.2"
        mac_address = "00:50:56:aa:aa:af"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"
    }

    network_interfaces {
        network_uid = dcloud_network.outside_network.id
        ip_address = "198.18.2.11"
        mac_address = "00:50:56:aa:aa:a5"
        name = "Network adapter 3"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.server_network.id
        ip_address = "198.18.5.11"
        mac_address = "00:50:56:aa:aa:a6"
        name = "Network adapter 4"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.6.11"
        mac_address = "00:50:56:aa:aa:a7"
        name = "Network adapter 5"
        type = "VIRTUAL_VMXNET_3"
    }
    remote_access {
        username           = var.fmc_admin_user
        password           = var.fmc_admin_pass
        vm_console_enabled = true

        display_credentials {
            username = var.fmc_admin_user
            password = var.fmc_admin_pass
        }
  }
}