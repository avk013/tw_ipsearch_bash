#/usr/bin/bash
for k in $(seq 1 12);
do
for i in $(seq 1 17);
do
c=0
oldc=0
echo -e " \n routerpool"$i
for j in $(seq 1 500);
do
    a="routerpool"$i".rlb.teamviewer.com"
    b=$(dig $a acns05.xaas.systems +short)
    c=$(wc -l <<< "$b")
#    echo "(dig $a +short)"
#    echo "$c: RESULT: $i + $j"
#printf "$j "
if [ "$c" -ne "$oldc" ] 
then
echo -e "num=$c \n"
oldc=$c
else printf "."
fi
    sleep 0.4

    if [[ "$b" == "" ]]; then
        continue
    fi
    echo "$b" >> ip_to_block3.txt
#    echo "$a" >> domains_to_block.txt
done
done
sleep 60
done