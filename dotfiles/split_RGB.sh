#read $num
num=ffffff
R=$(echo $num | cut -c 1-2)
G=$(echo $num | cut -c 3-4)
B=$(echo $num | cut -c 5-6)
echo $R
echo $G
echo $B
