#! /bin/bash
# cars.sh
# Lucas Gaudet

i=1

while [ "$i" -eq 1 ]
do
	echo "type '1' to enter a new car"
	echo "type '2' to display the current list of cars"
	echo "type '3' to quit and exit the program"
	echo ""
	read choice

	case "$choice" in
		"1") 
			echo "Year: " 
			read year
			echo "Make: " 
			read make
			echo "Model: " 
			read model
			entry="$year:$make:$model"
			echo "$entry" >> My_old_cars;;
		"2")
			cat My_old_cars
			echo "";;
		"3")
			i=2;;
	esac	
done

echo "Goodbye"
