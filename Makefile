tf_init:
	cd infra && terraform init -upgrade

tf_plan:
	cd infra && terraform plan

tf_apply:
	cd infra && terraform apply -auto-approve

tf_destroy:
	cd infra && terraform destroy -auto-approve

yc_list_images:
	yc compute image list --folder-id standard-images > images.txt

sync-repo:
	rsync -avz \
		--exclude=.venv \
		--exclude=infra/.terraform \
		--exclude=.terraform \
		--exclude=.terraform-version \
		--exclude=.terraformrc \
		--exclude=*.info \
		--exclude=*.lock.hcl \
		--exclude=*.tfstate \
		--exclude=*.backup \
		--exclude=*.json . yc-proxy:/home/ubuntu/otus/otus-practice-cloud-infra
