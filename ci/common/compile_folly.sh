echo "in compile folly.sh"
cd /root/folly
python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build
