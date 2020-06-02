set -e

apt-get update

apt-get -y install \
  ant \
  bzip2 \
  clang \
  clang-7.0 \
  cmake \
  debsigs \
  dpkg-sig \
  expect \
  fakeroot \
  gcc \
  gnupg1 \
  libacl1-dev \
  libacl1-dev \
  libattr1-dev \
  libboost-all-dev \
  libcap-dev \
  libcap-dev \
  libcurl4-openssl-dev \
  libffi-dev \
  libglib2.0-dev \
  libpam0g-dev \
  libpango-1.0-0 \
  libssl-dev \
  libuser1-dev \
  libxml-commons-external-java \
  lsof \
  make \
  mesa-common-dev \
  openjdk-11-jdk  \
  patchelf \
  python \
  r-base \
  rrdtool \
  uuid-dev \
  wget \
  zlib1g

if [ -e install-overlay-common ]
then
  ./install-overlay-common
fi

