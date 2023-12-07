#!/bin/bash

INPUT_DATA="./test_input.txt"

function process_ticket_line()
{
    local line=$1
    local line_number=${line%%:*}
    line_number=${line_number##* }
    line=${line##*:}
    local card_points=0
    local winning_numbers=( $(echo $line | cut -d'|' -f1) )
    local card_numbers=( $(echo $line | cut -d'|' -f2) )
    for winning_number in "${winning_numbers[@]}"; do
        for card_number in "${card_numbers[@]}"; do
            if [ "$winning_number" == "$card_number" ]; then
                (( card_points++ ))
            fi
        done
    done

    if (( card_points > 0 )); then
        (( total_winning_tickets++ ))
    fi

    local -a var
    local index=0
    local cards=$(( line_number + card_points )) # Since array is zero indexed.
    for (( line_number; line_number < cards; line_number++ )); do
        var[$index]=$card_number
        echo $index
        (( index++ ))
    done
    local i
    for i in "${var[@]}"; do
        echo "${all_tickets[$i]}"
        process_ticket_line "${all_tickets[$i]}"
    done
}


total_winning_tickets=0

readarray -t all_tickets < $INPUT_DATA

for ticket in "${all_tickets[@]}"; do
    process_ticket_line "$ticket"
done


# Test input total is 30
# Challenge input total is ??
echo $total_winning_tickets