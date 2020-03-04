if [ $# != 1 ]
then
    echo "Enter exactly one argument"
else
    file=$1
    if [[ -f $file ]]
    then
        echo "file exist"
        cat $file | tr 'a-z' 'A-Z'
    else
        echo "file does not exist"
    fi
fi
