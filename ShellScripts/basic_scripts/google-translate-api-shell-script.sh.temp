# all chinese put the translate's resout

function translate-to-all-zh(){
   if [ -f TRANS_FILE ]; then

   fi

   while read line
   do
       echo $line | trans -no-auto -b :zh >>quanzhong.txt
   done < TRANS_FILE
}

# 结果为中英夹杂的脚本
function translate-to-zh-en-mixed(){
    if [ -f TRANS_FILE ]; then

    fi

    while read line
    do
        echo $line
        echo $line | trans -no-auto -b :zh >>zhongyingjiaza.txt
    done < TRANS_FILE
