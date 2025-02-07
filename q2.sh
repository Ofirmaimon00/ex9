sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l
sed -E 's/[^a-zA-Z]/\n/g' sherlockholmes.txt | sed -n '/^Sherlock$/p;/^Holmes$/p' | wc -l
sed '/^[[:space:]]*$/!s/^/Hello:/' sherlockholmes.txt
sed -E 's/\b([A-Z][a-z]+) ([A-Z][a-z]+)\b/Ofir Maimon/g' sherlockholmes.txt
sed -E 's/\(/[/g; s/\)/]/g' sherlockholmes.txt
