dev:
	rm -rf .terraform*
	git pull
	terrafile -f env-dev/Terrafile
	terraform init
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
