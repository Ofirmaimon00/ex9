awk '{print NR}' aliceinwonderland.txt
awk 'BEGIN {count=0} {count += gsub(/ Alice /, "")} END {print count}' aliceinwonderland.txt
awk '{for (i=1; i<=NF; i++) {word=tolower($i); gsub(/[^a-z]/, "", word); if (word != "") words[word]++}} END {for (w in words) if (words[w] == 1) print w}' aliceinwonderland.txt
awk '{for (i=1; i<=NF; i++) {word=tolower($i); gsub(/[^a-z]/, "", word); if (word != "") words[word]++}} END {for (w in words) print words[w], w}' aliceinwonderland.txt | sort -nr | head -5
awk '{for (i=1; i<=NF; i++) {word=$i; gsub(/[^a-zA-Z]/, "", word); total_length += length(word); total_words++}} END {print total_length / total_words}' aliceinwonderland.txt