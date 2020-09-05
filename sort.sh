awk '!x[$0]++' ip_to_block3.txt > sorted.txt
sort sorted.txt > sort.txt

