#!/usr/bin/env bash
#
# install-dependencies-stretch
#
# Copyright (C) 2009-20 by RStudio, PBC
#
# Unless you have received this program directly from RStudio pursuant
# to the terms of a commercial license agreement with RStudio, then
# this program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
#
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

