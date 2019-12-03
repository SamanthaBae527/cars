#! /bin/bash
# cars.sh
# Samantha Bae

num=3
while [ $num -eq 3 ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read number
	case $number in
		1)echo "Input the year:"
			read year
		echo "Input the make:"
			read make
		echo "Input the model:"
			read model
		newCar="${year}:${make}:${model}"
		echo "$newCar" >> My_old_cars.txt;;
		2)sort My_old_cars.txt;;
		3)echo "Goodbye"
		num=$((num+1));;
	esac
done
