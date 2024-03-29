# data "dcloud_inventory_vms" "available_vms" {
#     topology_uid = dcloud_topology.topology_iac.id
# }

# output "vms" {
#     value = data.dcloud_inventory_vms.available_vms
# }

resource "dcloud_vm" "jumphost" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13536676"
    name = "Jumphost"
    description = "Windows 10 Jumphost"
    os_family = "WINDOWS"

    network_interfaces {
        network_uid = dcloud_network.routed_network.id
        ip_address = "198.18.1.36"
        mac_address = "00:50:56:aa:aa:a2"
        name = "Network adapter 1"
        rdp_enabled = true
        ssh_enabled = false
        type = "VIRTUAL_VMXNET_3"
        
    }

    network_interfaces {
        network_uid = dcloud_network.server_network.id
        ip_address = "198.18.5.36"
        mac_address = "00:50:56:ab:ab:a2"
        name = "Network adapter 2"
        type = "VIRTUAL_VMXNET_3"
        
    }

    network_interfaces {
        network_uid = dcloud_network.inside_network.id
        ip_address = "198.18.6.36"
        mac_address = "00:50:56:ac:ac:a2"
        name = "Network adapter 3"
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