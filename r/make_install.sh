export R_VERSION=3.6.3
sudo apt-get update -y 
sudo mkdir -p /usr/share/man/man1 sudo 
sudo apt-get install -y git openjdk-11-jdk libxml2-dev libfontconfig1-dev gfortran libmariadbclient-dev curl libssl-dev libxt-dev \ 
libcairo2-dev libcurl4-openssl-dev libudunits2-dev libgomp1 libgeos-dev libsasl2-dev libpq-dev unixodbc-dev libgdal-dev build-essential \ 
make gcc g++ liblzma-dev libreadline6-dev libreadline6-dev libx11-dev libbz2-dev 
sudo git clone https://github.com/yannyven/Artemisa_deb_file.git 
sudo apt install -y ./Artemisa_deb_file/libssl1.0.2_1.0.2u-1_deb9u1_armhf.deb 
cd /home 
sudo curl -O https://cran.rstudio.com/src/base/R-3/R-${R_VERSION}.tar.gz ./
sudo tar -xzvf R-${R_VERSION}.tar.gz 
cd R-${R_VERSION} 
sudo ./configure --prefix=/opt/R/${R_VERSION} -enable-memory-profiling --enable-R-shlib --with-blas --with-lapack 
sudo make
sudo make DESTDIR=/temp install
