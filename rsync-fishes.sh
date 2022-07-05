# 2214 -> 1272
#echo "2214 -> 1272 (excluding projections)"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.png" --include="*.pdf" --exclude="*" ~/2214/EAWAG/ ~/1272/EAWAG/
# 2214 -> iee
echo "2214 -> iee"
rsync --human-readable --verbose --recursive --update --omit-dir-times ~/2214/EAWAG/ ~/research-storage-iee/
# 1272 -> iee
echo "1272 -> iee"
rsync --human-readable --verbose --recursive --update --omit-dir-times ~/1272/EAWAG/ ~/research-storage-iee/
# iee -> 1272
echo "iee (Support files (.md, .txt, and .xls*)) --> 1272"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.md" --include="*.txt" --include="*.xl*" --exclude="*" ~/research-storage-iee/ ~/1272/EAWAG/
# iee -> 2214
echo "iee (Support files (.md, .txt, and .xls*)) --> 2214"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.md" --include="*.txt" --include="*.xl*" --exclude="*" ~/research-storage-iee/ ~/2214/EAWAG/
# 2214 -> Archiv
echo "2214 -> archive"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/2214/EAWAG/ ~/research-storage-uct/Archiv_Tape/EAWAG/
# 1272 -> Archive
echo "1272 -> archive"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/1272/EAWAG/ ~/research-storage-uct/Archiv_Tape/EAWAG/
# iee -> Archive
echo "iee -> archive"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/research-storage-iee/ ~/research-storage-uct/Archiv_Tape/EAWAG/
