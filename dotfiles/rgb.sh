if  [ $# -eq 4 ]
then
	echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
	echo $2 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
	echo $3 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
	echo $4 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
elif [ $# -eq 1 ]
then
        echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
        echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
        echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
        echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
else 
	echo "Number of arguments mismatch"
fi
