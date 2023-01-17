
cd fibs
LANGS="$(ls)"
rm ../README.md

for lang in $LANGS
do 
    echo "# $lang" >> ../README.md
    echo "\`\`\`" >> ../README.md
    echo "$(cat $lang)" >> ../README.md
    echo "\`\`\`" >> ../README.md
    
    
done
open ../README.md