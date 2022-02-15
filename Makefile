

install_dep:
	cd folly && sudo ./build/fbcode_builder/getdeps.py install-system-deps --recursive

git_clone:
	git clone https://github.com/facebook/folly
	cd folly && git checkout tags/v2022.01.31.00

build:
	cd folly && python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build
