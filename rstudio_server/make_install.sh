sudo apt-get update -y
sudo mkdir -p /usr/share/man/man1
sudo apt-get install -y git openjdk-11-jdk libxml2-dev libfontconfig1-dev gfortran libmariadbclient-dev sudo curl libssl-dev libxt-dev \
libcairo2-dev libcurl4-openssl-dev libudunits2-dev libgomp1 libgeos-dev libsasl2-dev libpq-dev unixodbc-dev libgdal-dev build-essential \
make gcc g++ liblzma-dev libreadline6-dev libreadline6-dev libx11-dev libbz2-dev wget
rm -rf /var/cache/apt/ 
wget https://github.com/rstudio/rstudio/tarball/v1.3.959/rstudio-rstudio-v1.3.959-0-g3a09be3.tar.gz ./
sudo tar -xzvf rstudio-rstudio-v1.3.959-0-g3a09be3.tar.gz ./
sudo rm ./rstudio-rstudio-3a09be3/dependencies/common/install-common
cp ./Artemisa_Project/rstudio_server/install-dependencies-buster ./rstudio-rstudio-3a09be3/dependencies/linux/
cp ./Artemisa_Project/rstudio_server/install-common ./rstudio-rstudio-3a09be3/dependencies/common/
cd ./rstudio-rstudio-3a09be3/dependencies/linux/
sudo sh install-dependencies-buster 
cd .. && cd common 
sudo sh install-common 
cd .. && cd .. 
sudo mkdir build && cd build 
sudo cmake .. -DRSTUDIO_TARGET=Server -DCMAKE_BUILD_TYPE=Release 
sudo make DESTDIR=/temp install


&& git clone https://github.com/yannyven/Artemisa_deb_file.git 
