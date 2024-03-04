resource "dcloud_vm" "jumphost" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13536676"
    name = "Jumphost"
    description = "Windows 10 Jumphost"
    os_family = "WINDOWS"

    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.15.10"
        mac_address = "00:50:56:aa:aa:a2"
        name = "Network adapter 1"
        rdp_enabled = true
        rdp_auto_login = true
        ssh_enabled = false
        type = "VIRTUAL_VMXNET_3"
        
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