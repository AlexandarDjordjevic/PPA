#!bin/bash

apt-ftparchive --arch amd64 packages amd64 > Packages
gzip -k -f Packages
apt-ftparchive release . > Release