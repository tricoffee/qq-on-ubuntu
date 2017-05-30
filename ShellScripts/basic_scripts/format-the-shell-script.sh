#/bin/bash
# -----------------------------------
# 05.11.2007 Author: osalvador for HaciendoTI haciendoti@gmail.com
# -----------------------------------
# Shel cript beautifier
#
# The basic premises:
# The script syntax must be correct.
#
# All statements must be on a new line, NOT VALID conditions such as:
# if [ ]; then 					Wrong
# 	sentences
# fi
#
# Should be:
# if [ ] 					Correct
# then
# 	sentences
# fi
#
# No use reserved words as variables, such
# if = "Hello world" 				Incorrect
# else = "Ho My God!" 				Incorrect
# then = 25 					Incorrect
#
# Instead if you should use capitalization but is not recomended
# IF = "Hello world" 				Correct
# ELSE = "Ho My God!" 				correct
# THEN = 25 					Correct
# ----------------------------------
# Input parameters
# $1 = Path of the script you want formatter
# $2 = Path of the out file formatted
# $3 = Number of spaces you want to apply to tab
# ----------------------------------

FILENAME=$1
FILEFORMATED=$2
N_SPACES=$3

###################################
# To be modified ...
###################################
#Default out file
function tryDefaultOutFile(){
    if [ "$FILEFORMATED" = "" ]
    then
         FILEFORMATED=$FILENAME"_beauty"
    fi
        
    : > $FILEFORMATED
}
#Determine the number of parameters
function isNotTextFile(){
    if [ ! -f $FILENAME ]
    then
        echo "Source file : \"$FILENAME\" is not invalid file type."
        echo " --- It's not a shell script file --- "
        exit
    fi
}
function isExistFileName(){
    #Test the FILEFORMATED file exists
    if [ -e $FILEFORMATED ]
    then
        echo "Target file : \"$FILEFORMATED\" is exist."
        echo "Please enter a not exist name."
        exit
    fi
}
# match speicified spaces
function isMatchToSpace(){
    if [[ "$N_SPACES" = "" ]]
    then
         N_SPACES="    "
    elif [[ "$N_SPACES" = "-nspace=*" ]]
        截取字符串
        等号后面字符转数字 --- 使用 builtin function

    fi
}


#Test the number of arguments
case $# in
	1)
        isNotTextFile()
        tryDefaultOutFile()
        ;; 
	2)
        isNotTextFile()
        isExistFileName()
        tryDefaultOutFile()
        ;;
	3)
        isNotTextFile()
        isExistFileName()
        isMatchToSpace()
        tryDefaultOutFile()
        ;;
	*)
        echo "Useage : $0 InputFile OutputFile SpaceNum"
        exit
	    ;;
esac

###################################
# To be modified ...
###################################




if_counter=0

LINE_NUMBER=`cat $1 | wc -l`
ACTUAL_LINE=1

while read -r line
do
	
	# Removed all Spaces and tabs on the left
	linea=`echo "$line" | sed 's/^[	 ]*//'`
	
	# Take the first 4 characters
	current_statment=`echo "$linea" | cut -c 1-4`	
	
	#Just for fi's, 3 characters and Trim balnk space
	is_fi=`echo "$current_statment" | cut -c 1-3 | tr -d ' '`
	
	# If it is a condition close
	if [ "$is_fi" = "fi"  -o "$current_statment" = "else" -o "$current_statment" = "esac" -o "$current_statment" = "done" -o "$current_statment" = "elif" ]
	then	
		if_counter=`expr $if_counter - 1`
	  #echo "FI = $if_counter $current_statment "
	fi
		
	# Tabulates the code
	i=0
	while [ $i -lt $if_counter ]
	do
		linea=`echo "${N_SPACES}${linea}"`		
		i=`expr $i + 1`		
	done
		
	#Just for do's, 3 characters and Trim balnk space
	is_do=`echo "$current_statment" | cut -c 1-3 | tr -d ' '` 

	# If it is a condition open
	if [ "$current_statment" = "else" -o "$current_statment" = "case" -o "$current_statment" = "then" -o "$is_do" = "do" ]
	then			
		if_counter=`expr $if_counter + 1`
		#echo "IF =$if_counter $current_statment "
	fi
	
	#Save the formatted line into file
	echo "$linea" >> $FILEFORMATED	
	
	#Progress bar
	percent=`expr $ACTUAL_LINE \* 100`
	percent=`expr \( ${percent} \/ ${LINE_NUMBER} \)`
	echo -ne $percent "% completed" "\r"
	ACTUAL_LINE=`expr $ACTUAL_LINE + 1`	
	
done < $FILENAME
echo
exit 0
