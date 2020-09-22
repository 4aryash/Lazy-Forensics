#!/bin/bash
#made by DirtyV!BE

printf "\n"
echo "      _____ ____ __   __    _____  ___   ____ _____ __   _ _____ ___ ____ _____" | lolcat -a -s 40
echo " |    |___|  __/   \_/      |____ |   | |___/ |____ | \  | |____  |  |    |___ " | lolcat -a -s 40
echo " |___ |   | /___    |       |     |___| |  \_ |____ |  \_| ____| _|_ |___ ____|" | lolcat -a -s 40
printf "\n-------------------- Ｒｅｐｅｔｉｔｉｏｎ Ａｕｔｏｍａｔｅｄ -------------------\n" | lolcat -a -s 20

printf "\nThe strings greater than $2 Characters in length in your file are:\n\n"
strings $1 -n $2
printf "\nAlthough it is still advisable to have a look at the strings manually once.\n\n\n"

exit-program()
{
	echo -e "\x1b[31m \x1b[1m \x1b[5m \x1b[8m"
	echo -e "Exited Successfully!" && kill -9 $BASHPID
	#exit
}

list="Binwalk Exiftool Hexdump Zsteg HiddenText(Snow) Foremost Quit"

echo -e "\x1b[36m ᔕEᒪEᑕT ᗩᑎ OᑭTIOᑎ"
echo -e "\x1b[33m To know more about the tools, try 'apropos tool-name' or 'man tool-name'"

select option in $list;
do
	if [ $REPLY = 1 ];
	then	echo ""
		printf "Binwalk" && binwalk -e $1 | tee -a log.txt
		echo "Check pwd for extracted files."
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"
		
	elif [ $REPLY = 2 ];
	then	echo ""
		printf "Exiftool\n\n" && exiftool $1 | tee -a log.txt
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"

	elif [ $REPLY = 3 ];
	then	echo ""
		printf "Hexdump\n\n" && xxd $1 | tee -a log.txt
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"
		
	elif [ $REPLY = 4 ];
	then	echo ""
		printf "Zsteg\n\n" && zsteg -a $1 | tee -a log.txt
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"
		
	elif [ $REPLY = 5 ];
	then	echo ""
		printf "Snow\n\n" && sed -n l $1 | tee -a log.txt
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"
		
	elif [ $REPLY = 6 ];
	then	echo ""
		printf "Foremost\n\n" && foremost -i $1 | tee -a log.txt
		sleep 2
		printf "\nCheck output directory for audit.txt\n"
		printf "\n---------------END---------------\n\n"
		echo "Press Enter to see the list again"
		
	elif [ $REPLY = 7 ];
	then
		printf "\n\nNOTE : Make sure to delete the previous logs before performing the analysis on a new file.\n\n"
		exit-program
	fi
done
