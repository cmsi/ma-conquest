#!/bin/sh
. $(dirname $0)/path.sh

if [ -f conquest_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/OrderN/CONQUEST-release/archive/v$VERSION_BASE-pre.tar.gz
tar zxvf v$VERSION_BASE-pre.tar.gz
mv CONQUEST-release-$VERSION_BASE-pre conquest_$VERSION_BASE
tar zcvf conquest_$VERSION_BASE.orig.tar.gz conquest_$VERSION_BASE
rm -rf v$VERSION_BASE-pre.tar.gz conquest_$VERSION_BASE
