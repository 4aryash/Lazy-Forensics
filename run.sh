#!/bin/bash

printf "\n"
echo "      _____ ____ __   __    _____  ___   ____ _____ __   _ _____ ___ ____ _____" | lolcat -a -s 40
echo " |    |___|  __/   \_/      |____ |   | |___/ |____ | \  | |____  |  |    |___ " | lolcat -a -s 40
echo " |___ |   | /___    |       |     |___| |  \_ |____ |  \_| ____| _|_ |___ ____|" | lolcat -a -s 40
printf "\n-------------------- Ｒｅｄｕｎｄａｎｃｙ Ａｕｔｏｍａｔｅｄ -------------------\n" | lolcat -a -s 20

printf "\nThe strings greater than 8 Characters in length in your file are:\n\n"
strings $1 | grep -x '.\{9\}'
printf "\nAlthough it is still advisable to have a look at the strings manually once.\n\n\n"

list="Binwalk Exiftool Hexdump Zsteg HiddenText Foremost"

echo -e "\x1b[36m ᔕEᒪEᑕT ᗩᑎ OᑭTIOᑎ"

select option in $list;
do
	if [ $REPLY = 1 ];
	then	binwalk -e $1
		echo "Check pwd for extracted files."
		printf "\n---------------END---------------\n"
		echo "Press Enter to see the list"
	elif [ $REPLY = 2 ];
	then	exiftool $1
		printf "\n---------------END---------------\n"
		echo "Press Enter to see the list"
	elif [ $REPLY = 3 ];
	then	xxd $1
		printf "\n---------------END---------------\n"
		echo "Press Enter to see the list"
	elif [ $REPLY = 4 ];
	then	zsteg -a $1
		printf "\n---------------END---------------\n"
		echo "Press Enter to see the list"
	elif [ $REPLY = 5 ];
	then	sed -n l $1
		printf "\n---------------END---------------\n"
		echo "Press Enter to see the list"
	elif [ $REPLY = 6 ];
	then	foremost -i $1
		printf "\nCheck output directory for audit.txt"
		printf "---------------END---------------\n"
		echo "Press Enter to see the list"
	fi
done
