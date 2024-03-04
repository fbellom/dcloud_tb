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