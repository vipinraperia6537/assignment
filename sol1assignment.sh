#! /bin/bash
function=$1
path=$2
file=$2
destination=$3
name=$3
content=$4
noofline=$4
whichline=$4
Logging(){
log=log_file.txt
user=`whoami`
date=`date`
status=`echo $?`
if [ $status -eq 0 ]
then
        echo " [$date] [$user] [$function] [$sucessfullyrun] >> log
else
        echo " [$date] [$user] [$function] [$sucessfullyrun] >> log
fi
}
AddDirectory()
{
if [[ function=="AddDirectory" ]]
then
        mkdir -p $path/$name
else
        echo "This directory does not exist"
fi
}
ListAll()
{
if [[ function=="ListAll" ]]
then
                ls -la $path
else
        echo "This list of file doesnot exist in your system please read out ls command"
fi
}
ListDirectory()
{
if [[ function=="ListDirectory" ]]
then
        ls -la $path |grep ^d
else
        echo "This list of file doesnot exist in your system please read out filter  command"
fi
}
ListFile()
{
if [[ function=="ListFile" ]]
then
        ls -la $path |grep ^-
else
        echo "This list of file doesnot exist in your system please read out filter  command"
fi
}
AddFile()
{
if  [[ function=="AddFile" ]]
then
        touch $path/$name
else
        echo "This  file cannot added please go and read file command "
fi
}
AddContent()
{
if  [[ function=="AddContent" ]]
then
        echo $content >> $path/$name
else
        echo "This  file cannot added please go and read file command "
fi
}
