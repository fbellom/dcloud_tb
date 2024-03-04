resource "dcloud_vm" "ftdv" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13104514"
    name = "Secure Firewall Threat Defense"
    description = "Secure Firewall Threat Defense"

    network_interfaces {
        # Management Interface
        network_uid = dcloud_network.common_network.id
        ip_address = "198.18.1.185"
        mac_address = "00:50:56:aa:aa:a4"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = true
    }
        network_interfaces {
        # Diagnostic Interface   
        network_uid = dcloud_network.common_network.id
        ip_address = "127.0.0.2"
        mac_address = "00:50:56:aa:aa:af"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"
    }

    network_interfaces {
        network_uid = dcloud_network.outside_network.id
        ip_address = "198.18.5.11"
        mac_address = "00:50:56:aa:aa:a5"
        name = "Network adapter 3"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.14.11"
        mac_address = "00:50:56:aa:aa:a6"
        name = "Network adapter 4"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.dmz_network.id
        ip_address = "198.18.20.11"
        mac_address = "00:50:56:aa:aa:a7"
        name = "Network adapter 5"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.traffgen_network_network.id
        ip_address = "198.18.24.110"
        mac_address = "00:50:56:aa:aa:a8"
        name = "Network adapter 6"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.traffgen_network_network.id
        ip_address = "198.18.24.111"
        mac_address = "00:50:56:aa:aa:a9"
        name = "Network adapter 7"
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