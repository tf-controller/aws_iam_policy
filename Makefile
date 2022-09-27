.PHONY: init
init:
	terraform init
	rm -rf .terraform

.PHONY: publish-oci
publish-oci:
	./publish-oci.sh v1
