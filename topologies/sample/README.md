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
