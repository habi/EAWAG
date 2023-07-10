# -----------------------------------------------
# -- archival of raw data to research storage ---
# -----------------------------------------------
# 2214 to archive
echo "2214 -> archive"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --exclude="*rectmp.log" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/2214/EAWAG/ ~/research-storage-uct/Archiv_Tape/EAWAG/
# 1272 to archive
#echo "1272 -> archive"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/1272/EAWAG/ ~/research-storage-uct/Archiv_Tape/EAWAG/
# Archive some (poentially) changed files from iee, too
#echo "iee -> archive"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --include="*.md" --exclude="*" ~/research-storage-iee/microCT/ ~/research-storage-uct/Archiv_Tape/EAWAG/
# --------------------------------------------------
# ---------- Copy *all* data to iee drive ----------
# --------------------------------------------------
# 2214 to iee
#echo "2214 -> iee"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --exclude="*rectmp.log" ~/2214/EAWAG/ ~/research-storage-iee/microCT/
# 1272 to iee
#echo "1272 -> iee"
#rsync --human-readable --verbose --recursive --update --omit-dir-times ~/1272/EAWAG/ ~/research-storage-iee/microCT/
# fastSSD to iee
#echo "anaklin25/fastSSD -> iee"
#rsync --human-readable --verbose --recursive --update --omit-dir-times /media/habi/Fast_SSD/EAWAG/ ~/research-storage-iee/microCT/
# ---------------------------------------
# ---------- 'internal' copies ----------
# ---------------------------------------
# 2214 -> 1272
#echo "2214 -> 1272 (excluding projections)"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.png" --include="*.pdf" --exclude="*" ~/2214/EAWAG/ ~/1272/EAWAG/
# iee -> 1272
#echo "iee (Support files (.md, .txt, and .xls*)) --> 1272"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.md" --include="*.txt" --include="*.xl*" --exclude="*" ~/research-storage-iee/microCT/ ~/1272/EAWAG/
# iee -> 2214
#echo "iee (Support files (.md, .txt, and .xls*)) --> 2214"
#rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.md" --include="*.txt" --include="*.xl*" --exclude="*" ~/research-storage-iee/microCT/ ~/2214/EAWAG/
# Generate us a copy of the 'support' files which we need for the publication on the fastSSD
echo "iee -> FastSSD anaklin25"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.enc" --include="*.c?v" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --exclude="*" ~/research-storage-iee/microCT/ /media/habi/Fast_SSD/EAWAG/
# Generate us a copy of the log files which we need for the publication on the fastSSD
echo "1272 -> Github repository logfiles"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.log" --exclude="*rectmp.log" --include="*.csv" --include="*.txt" --include="*.md" --include="*.enc" --exclude="*" ~/1272/EAWAG/ ~/P/Documents/EAWAG/logfiles/
echo "2214 -> Github repository logfiles"
rsync --human-readable --verbose --recursive --update --omit-dir-times --include="*/" --include="*.log" --exclude="*rectmp.log" --include="*.csv" --include="*.txt" --include="*.md" --include="*.enc" --exclude="*" ~/2214/EAWAG/ ~/P/Documents/EAWAG/logfiles/
