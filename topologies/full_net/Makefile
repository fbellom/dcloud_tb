plan:
	terraform plan -var-file="secrets.tfvars"

build:
	terraform apply -auto-approve -var-file="secrets.tfvars"

destroy:
	terraform destroy -auto-approve -var-file="secrets.tfvars"

clean:
	rm -rf .terraform/
	rm -rf .terraform.lock.hcl
	rm -rf terraform.tfstate
	rm -rf terraform.tfstate.backup
	terraform init

init:
	terraform init