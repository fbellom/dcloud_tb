# Sample IaC Topology for dCloud Topology Builder

This a basic Topology with

- FMC
- FTD
- Inside and Outside Networks
- Windows Jumphost

## Build with make (Linux and macOS)

`make plan`

Execute `terraform plan`

`make build`

Execute `terraform apply -auto-approve`

`make destroy`

Execute `terraform destroy -auto-approve`

`make clean`

Delete Terraform state files and folder and execute `terraform init`

`make init`

Execute `terraform init` but do not delete any file

## About Secrets Handling

As good practice, even in this well-known creds environment, is important to separate sensitive information like username and password from configuration files. For this repo a `secrets.tfvars` file is in use to that goal.

The following vars are stored there and called from `variables.tf`

---

```
jumphost_rdp_user =<REPLACE-WITH-YOUR-INFO>
jumphost_rdp_pass =<REPLACE-WITH-YOUR-INFO>
fmc_admin_user = <REPLACE-WITH-YOUR-INFO>
fmc_admin_pass = <REPLACE-WITH-YOUR-INFO>
server_admin_user = <REPLACE-WITH-YOUR-INFO>>
server_admin_pass = <REPLACE-WITH-YOUR-INFO>>
desktop_admin_user = <REPLACE-WITH-YOUR-INFO>>
desktop_admin_pass = <REPLACE-WITH-YOUR-INFO>>
ise_admin_user = <REPLACE-WITH-YOUR-INFO>>
ise_admin_pass = <REPLACE-WITH-YOUR-INFO>>
tb_token = <REPLACE-WITH-YOUR-INFO>`
```

---

## About Authentication

Official documentation suggest you to use Cookie value stored at tb_p_a inside the browser session store (review your browser documentation) and export it to an environmental variable called `TB_AUTH_TOKEN=`.

In this repo I'm using a different approach by using the terraform `auth_token` attribute in config.tf and storing the value of the cookie inside a variable.

```
provider "dcloud" {
  tb_url = "https://tbv3-production.ciscodcloud.com/api"
  auth_token =  var.tb_token
}
```
