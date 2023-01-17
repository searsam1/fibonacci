
cd fibs
LANGS="$(ls)"
rm ../README.md

for lang in $LANGS
do 
    EXT="$(echo "$lang" | awk -F'.' '{print $2}')"
    echo "[*$lang](/$lang)*" >> ../README.md
    echo "\`\`\`$EXT" >> ../README.md
    echo "$(cat $lang)" >> ../README.md
    echo "\`\`\`" >> ../README.md
    
    
done
open ../README.md