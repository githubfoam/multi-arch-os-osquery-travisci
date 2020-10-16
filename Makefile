
deploy-linux-debian-arm64:
	bash scripts/deploy-linux-debian-arm64.sh

deploy-linux-debian-amd64:
	bash scripts/deploy-linux-debian-amd64.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

push-image:
	docker push $(IMAGE)

.PHONY: deploy-vagrant deploy-libvirt 