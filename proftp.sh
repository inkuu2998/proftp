#! /bin/bash
set -e

rm -rf /usr/local/proftpd/

cd /usr1/proftpd-1.3.8
./configure --prefix=/usr/local/proftpd && make && make install
cp /usr1/proftpd-1.3.8/sample-configurations/basic.conf /usr/local/proftpd/sbin/basic_new.conf


/usr/local/proftpd/sbin/proftpd -d 10 -n -c /usr/local/proftpd/sbin/basic_new.conf