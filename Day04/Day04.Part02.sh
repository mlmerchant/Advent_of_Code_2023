#!/bin/bash

INPUT_DATA="./input.txt"

function process_ticket_line()
{
    line=$1
    line_number=${line%%:*}
    line_number=${line_number##*[1-9]}
    line=${line##*:}
    card_points=0
    winning_numbers=( $(echo $line | cut -d'|' -f1) )
    card_numbers=( $(echo $line | cut -d'|' -f2) )
    for winning_number in "${winning_numbers[@]}"; do
        for card_number in "${card_numbers[@]}"; do
            if [ "$winning_number" == "$card_number" ]; then
                (( card_points++ ))
            fi
        done
    done
    
    echo $card_points
    
    if [ $card_points > 0 ]; then
        (( total_winning_tickets++ ))
    fi
    
    for i in {$card_number..$((card_number + card_points))}; do
        # echo process_ticket_line "${all_tickets[$i]}"
        echo "${all_tickets[$i]}"
    done
}


total_winning_tickets=0

readarray -t  all_tickets < $INPUT_DATA

for ticket in "${all_tickets[@]}"; do
    echo $ticket
    process_ticket_line "$ticket"
done


# Test input total is 30
# Challenge input total is ??
# echo $total_winning_tickets
