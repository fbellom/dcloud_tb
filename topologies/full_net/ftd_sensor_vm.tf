resource "dcloud_vm" "ftdv_internal" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13104514"
    name = "FTDv Internal"
    description = "FTDv Internal"

    network_interfaces {
        # Management Interface
        network_uid = dcloud_network.common_network.id
        ip_address = "198.18.1.12"
        mac_address = "00:50:56:ab:ab:12"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = false
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
        # Diagnostic Interface   
        network_uid = dcloud_network.hq_outside_network.id
        ip_address = "198.18.3.12"
        mac_address = "00:50:56:aa:aa:ae"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"
    }

    network_interfaces {
        network_uid = dcloud_network.infra_network.id
        ip_address = "198.18.5.100"
        mac_address = "00:50:56:aa:aa:15"
        name = "Network adapter 3"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.datacenter_network.id
        ip_address = "198.18.6.100"
        mac_address = "00:50:56:aa:aa:16"
        name = "Network adapter 4"
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


resource "dcloud_vm" "ftdv_branch" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13104514"
    name = "FTDv Branch"
    description = "FTDv Branch"

    network_interfaces {
        # Management Interface
        network_uid = dcloud_network.common_network.id
        ip_address = "198.18.1.13"
        mac_address = "00:50:56:ab:ab:13"
        name = "Network adapter 1"
        type = "VIRTUAL_VMXNET_3"
        ssh_enabled = false
    }
        network_interfaces {
        # Diagnostic Interface   
        network_uid = dcloud_network.common_network.id
        ip_address = "127.0.0.2"
        mac_address = "00:50:56:aa:aa:bf"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"
    }

    network_interfaces {
        network_uid = dcloud_network.branch_outside_network.id
        ip_address = "198.18.2.100"
        mac_address = "00:50:56:aa:aa:b5"
        name = "Network adapter 3"
        type = "VIRTUAL_VMXNET_3"
    }
    network_interfaces {
        network_uid = dcloud_network.branch_inside_network.id
        ip_address = "198.18.7.100"
        mac_address = "00:50:56:aa:aa:b6"
        name = "Network adapter 4"
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