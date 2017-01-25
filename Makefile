.PHONY: orig deb

VERSION := $(shell head -2 blitz/CHANGES | tail -1 | cut -f1 -d" ")

update:
	git submodule update --remote

orig:
	tar --exclude=blitz/.git --exclude=blitz/.gitignore -czf ../php7.0-blitz_$(VERSION).orig.tar.gz blitz

deb:
	dpkg-buildpackage -b -tc

# [EOF]
