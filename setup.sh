#Tools required to run the script.
sudo apt-get install -y binwalk         #tool for searching binary images for embedded files and executable code
sudo apt-get install -y exiftool        #Read and write meta information in files
sudo apt-get install -y xxd             #creates  a  hex  dump of a given file or standard input
git clone "https://github.com/zed-0xff/zsteg.git"       #detect stegano-hidden data in PNG & BMP files
sudo mv zsteg/bin/zsteg* /usr/local/bin && rm -rf zsteg
sudo apt-get install -y foremost        #Recover files using their headers, footers, and data structures
sudo apt-get install lolcat             #rainbow coloring effect for text console display
