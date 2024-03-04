variable tb_token {
    description = "Topology Builder Token"
    type = string
    sensitive = true
}

variable tb_datacenter {
    description = "Topology Builder dCloud Data Center"
    type = string
    default = "RTP"
}

variable jumphost_rdp_user {
    description = "Jumphost User"
    type = string
    sensitive = true
}

variable jumphost_rdp_pass {
    description = "Jumphost Password"
    type = string
    sensitive = true
}


variable fmc_admin_user {
    description = "FMC Admin User"
    type = string
    sensitive = true
}

variable fmc_admin_pass {
    description = "FMC Admin Password"
    type = string
    sensitive = true
}

variable server_admin_user {
    description = "Server Admin User"
    type = string
    sensitive = true
}

variable server_admin_pass {
    description = "Server Admin Password"
    type = string
    sensitive = true
}

variable desktop_admin_user {
    description = "Server Admin User"
    type = string
    sensitive = true
}

variable desktop_admin_pass {
    description = "Server Admin Password"
    type = string
    sensitive = true
}