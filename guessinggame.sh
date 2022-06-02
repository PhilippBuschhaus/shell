#declare number of file as veriable
numberOfFiles=$(ls | wc -l)
#echo $numberOfFiles
echo 'How many files do you think are in this directory?'
read response
 if [ $response -ne $numberOfFiles ]
 then
 echo 'this was false'
 else
 echo 'this was right'
 fi