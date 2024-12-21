dev:
	rm -rf .terraform*
	git pull
	terrafile -f env-dev/Terrafile
	terraform init
	terraform apply -auto-approve -var-file=env-dev/main.tfvars


dev-destroy:
	rm -rf .terraform*
	git pull
	terrafile -f env-dev/Terrafile
	terraform init
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars
