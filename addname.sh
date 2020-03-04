if [ $# -eq 2 ];
then
	if [[ -f $1 ]];
	then
		echo " File exists"
		file=$1
		count=$(grep $2 $file | wc -l)
		if [ $count -eq 0 ];
		then
		   echo $2>>$file
		else
		   echo "Username already exists"
		fi
	else
		echo "file doesnot exist"
	fi
else
	echo "Enter correct Number of arguments"
fi

