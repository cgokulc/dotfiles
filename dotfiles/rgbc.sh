echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
echo $2 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
echo $3 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
echo $4 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
sleep 0.1
echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
echo $2 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
echo $3 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
echo $4 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
sleep 0.1
echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
echo $2 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
echo $3 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
echo $4 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
sleep 0.1
echo $1 > /sys/devices/platform/hp-wmi/rgb_zones/zone03
echo $2 > /sys/devices/platform/hp-wmi/rgb_zones/zone00
echo $3 > /sys/devices/platform/hp-wmi/rgb_zones/zone01
echo $4 > /sys/devices/platform/hp-wmi/rgb_zones/zone02
sleep 0.1
