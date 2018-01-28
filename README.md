xymon-temperature
=================

Temperature script to pull temps from IPMI if available and sysctl for BSD systems

Add this to $XYMONCLIENTHOME/etc/clientlaunch.cfg:

```
[temperature]
        ENVFILE $XYMONCLIENTHOME/etc/xymonclient.cfg
        CMD $XYMONCLIENTHOME/ext/temperature.sh
        LOGFILE $XYMONCLIENTLOGS/temperature.log
        INTERVAL 5m
```
