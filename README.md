# dCloud Topology Builder with Terraform

This Repo is a collection of Topologies created via terraform, using the Topology Builder Tool

## dCloud Authentication

You need to extract the cookie content for the SSO token, which is stored under the key **"tb_p_a"**. You can check this in the browser Developer Tools. Check your browser documentation

---

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

Official documentation suggest you to use Cookie value stored at **tb_p_a** inside the browser session store (review your browser documentation) and export it to an environmental variable called `TB_AUTH_TOKEN=`.

In this repo I'm using a different approach by using the terraform `auth_token` attribute in config.tf and storing the value of the cookie inside a variable.

```
provider "dcloud" {
  tb_url = "https://tbv3-production.ciscodcloud.com/api"
  auth_token =  var.tb_token
}
```

---

by (Freddy Bello)[frbello@cisco.com]
