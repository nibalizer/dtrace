#!/usr/bin/bash

cd ~root/nibz
while true
do
	./txg_monitor_nibz.d bungalow | nc graphite.cat.pdx.edu 2003
#echo "sending to graphite stopped for some reason" | mailx nibz@cat.pdx.edu -s "fault.cat.pdx.edu and graphite"
	echo "sending to graphite stopped for some reason `date +%s %F`"  >> graphite.log
done

