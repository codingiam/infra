.PHONY: all
all: clean package

.PHONY: package
package:
	packer build -force -on-error=abort images/codingiam.pkr.hcl

.PHONY: clean
clean:
	pushd boxes/ && (vagrant destroy -f &> /dev/null || true) && popd
	find boxes -type f,d -not \( -name '.keep' -or -name 'boxes' \) -delete
