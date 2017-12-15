echo "enter the value n"
read n
s=0
for(($i=0;$i<=n;$i++))
s=`expr $s + $i`
done
echo "result is $s"
