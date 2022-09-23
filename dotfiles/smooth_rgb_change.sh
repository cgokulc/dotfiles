r1="0x"$(echo $1 | cut -c 1-2 )
r2="0x"$(echo $2 | cut -c 1-2 )
g1="0x"$(echo $1 | cut -c 3-4 )
g2="0x"$(echo $2 | cut -c 3-4 )
b1="0x"$(echo $1 | cut -c 5-6 )
b2="0x"$(echo $2 | cut -c 5-6 )
r1_d=$(printf "%d" $r1)
g1_d=$(printf "%d" $g1)
b1_d=$(printf "%d" $b1)
r2_d=$(printf "%d" $r2)
g2_d=$(printf "%d" $g2)
b2_d=$(printf "%d" $b2)
if [ "$r1_d" -lt "$r2_d" ]
then
	r_o=+
	r_dif=$( expr $r2_d - $r1_d)
else
	r_o=-
	r_dif=$( expr $r1_d - $r2_d)
fi

if [ "$g1_d" -lt "$g2_d" ]
then
	g_o=+
	g_dif=$( expr $g2_d - $g1_d)
else
	g_o=-
	g_dif=$( expr $g1_d - $g2_d)
fi

if [ "$b1_d" -lt "$b2_d" ]
then
	b_o=+
	b_dif=$( expr $b2_d - $b1_d)
else
	b_o=-
	b_dif=$( expr $b1_d - $b2_d)
fi

steps=20

r_step=$( expr $r_dif / $steps )
g_step=$( expr $g_dif / $steps )
b_step=$( expr $b_dif / $steps )

for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
	color=$(printf "%02x%02x%02x" $r1_d $g1_d $b1_d)
	/usr/bin/bash /home/gokul/scripts/rgb.sh $color
	sleep 0.05
	r1_d=$( expr $r1_d $r_o $r_step )
	g1_d=$( expr $g1_d $g_o $g_step )
	b1_d=$( expr $b1_d $b_o $b_step )
done

sleep 0.1
/usr/bin/bash /home/gokul/scripts/rgb.sh $2

