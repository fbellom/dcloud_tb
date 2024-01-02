resource "dcloud_vm" "winad" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13536678"
    name = "WindowsAD"
    description = "Windows Server 2016"
    os_family = "WINDOWS"

    network_interfaces {
        network_uid = dcloud_network.common_network.id
        ip_address = "198.18.1.100"
        mac_address = "00:50:56:aa:aa:a3"
        name = "Network adapter 1"
        rdp_enabled = true
        rdp_auto_login = true
        ssh_enabled = false
        type = "VIRTUAL_VMXNET_3"
        
    }


    remote_access {
        username           = var.jumphost_rdp_user
        password           = var.jumphost_rdp_pass
        vm_console_enabled = true

        display_credentials {
        username = var.jumphost_rdp_user
        password = var.jumphost_rdp_pass
        }
    }
}