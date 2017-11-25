/usr/local/bin/ipmitool sdr | grep "System Temp" | awk '{printf("&green System %.0f %.0f\n",$4,($4*1.8)+32)}' > /tmp/temp.txt
sysctl dev.cpu.0.temperature | awk '{printf("&green CPU %.0f %.0f\n",$2,($2*1.8)+32)}' >> /tmp/temp.txt
$XYMON $XYMSRV "status `hostname -s`.temperature green `date`
`cat /tmp/temp.txt`
"
rm /tmp/temp.txt
