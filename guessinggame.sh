#function to check number of files as veriable
numberOfFiles=$(ls | wc -l)

#echo $numberOfFiles
echo 'How many files do you think are in this directory?'
read response

#Function to check if input is right
 function checkResponse() {
 if [ $response -ne $numberOfFiles ]
 then
    #display first message and declare answerFalse veriable
    echo 'this was false'

        #check if answer was lower or higher
        if [ $response -lt $numberOfFiles ]  
        then    
            echo 'too low'
        else
            echo 'too high'
        fi
    echo 'Try again'
    
 else
    echo 'this was right'
    
 fi
 }

#check response for the first time
checkResponse

#run function as long as answer is wrong
while [ $response -ne $numberOfFiles ]
do
read response
checkResponse
done