echo "in compile folly.sh"
cd /root/folly
echo "ls . aka (/root/folly)"
pwd
echo "---------"
ls 
python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build
