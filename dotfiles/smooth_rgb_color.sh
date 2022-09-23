if [ -f /home/gokul/.rgb ] 
then
	color1=`cat /home/gokul/.rgb`
	echo $1 > /home/gokul/.rgb
	/usr/bin/bash /home/gokul/scripts/smooth_rgb_change.sh $color1 $1
else
	echo "rgb color file found"
fi
