#
# install-common
#
# Copyright (C) 2009-19 by RStudio, PBC
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

./install-dictionaries
./install-mathjax
./install-boost
./install-pandoc
./install-packages
./install-sentry-cli

# when installing dependencies to setup a dev environment, need to run install-crashpad
# via sudo; however, this causes problems if used when building a Dockerfile


if [ -e install-overlay ]
then
   ./install-overlay
fi
