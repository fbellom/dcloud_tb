resource "dcloud_vm" "fmc" {
    topology_uid = dcloud_topology.topology_iac.id
    inventory_vm_id = "13032841"
    name = "Secure Firewall Management Center"
    description = "Secure Firewall Management Center"

    network_interfaces {
        network_uid = dcloud_network.routed_network.id
        ip_address = "198.18.1.10"
        mac_address = "00:50:56:aa:aa:a3"
        name = "Network adapter 1"
        type = "VIRTUAL_E1000"
        ssh_enabled = true
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