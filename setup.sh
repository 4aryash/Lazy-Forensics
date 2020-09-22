#Tools required to run the script.
sudo apt-get install -y binwalk
sudo apt-get install -y exiftool
sudo apt-get install -y xxd
git clone "https://github.com/zed-0xff/zsteg.git"
sudo mv zsteg/bin/zsteg* /usr/local/bin && rm -rf zsteg
sudo apt-get install -y foremost
sudo apt-get install lolcat
