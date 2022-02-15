#!/bin/bash



car=('BMW' 'Toyota' 'Honda' 'Seat')


unset car[2]

car[2]="Peugeot"

echo "${car[@]}"
echo "${car[1]}"
echo "${!car[@]}"
echo "${#car[@]}"


