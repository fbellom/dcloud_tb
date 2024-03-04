terraform {
  required_providers {
    dcloud = {
      source = "cisco-open/dcloud"
      version = "0.1.18"
    }
  }
}

provider "dcloud" {
  tb_url = "https://tbv3-production.ciscodcloud.com/api"
  auth_token =  var.tb_token
}
