###############################
# Take first and last number on each
# line, concat them together, and 
# add them up.

sum=0

while read -r line; do

    # Lowercase Letters
    line=$(echo $line | tr [A-Z] [a-z])

    # Find and replace word numbers
    line=$(echo $line | sed 's/zero/0/g')
    line=$(echo $line | sed 's/one/1/g')
    line=$(echo $line | sed 's/two/2/g')
    line=$(echo $line | sed 's/three/3/g')
    line=$(echo $line | sed 's/four/4/g')
    line=$(echo $line | sed 's/five/5/g')
    line=$(echo $line | sed 's/six/6/g')
    line=$(echo $line | sed 's/seven/7/g')
    line=$(echo $line | sed 's/eight/8/g')
    line=$(echo $line | sed 's/nine/9/g')
 
    # Extract the first number
    temp=${line#*[0-9]}
    temp2=${line%$temp}
    i=${#temp2}
    i=$(( num - 1 ))
    num1=${temp2:$i:1}

    # Extract the last number
    temp=${line%[0-9]*}
    temp2=${line#$temp}
    num2=${temp2:0:1}

    # Concat the numbers
    number="$num1$num2"
    
    # Add numbers up
    sum=$(( sum + number ))
done < input.txt

echo $sum
