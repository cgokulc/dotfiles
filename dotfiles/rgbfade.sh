#!/bin/bash
r=255
g=0
b=255

for i in {0..50}
do
#	eval "sudo ~/scripts/rgb.sh $(( 0+$i )) $(( 0+$i )) $(( 0+$i )) $(( 0+$i ))"
	r-=5
	g+=5
	b-=5
	printf "%d %d %d" $r $g $b
#	c=$(printf '%0*x%0*x%0*x' 2 $r 2 $g 2 $b)
#	echo $c
#	echo ""
#	printf 'sudo ~/scripts/rgb.sh %s %s %s %s' $c $c $c $c
#	eval $(printf 'sudo ~/scripts/rgb.sh %s %s %s %s' $c $c $c $c )
done

