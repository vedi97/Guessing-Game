#Vedi Ghahremanyans Sep.28.2022

set number [expr {int(rand()*101)}] ; list

#Some Information about the game
puts "\n*********ATTENTION*********"
puts "You will get 'hot' if your guess gets closer to the secret number and 'cold' if it gets further"
puts "*********ATTENTION*********\n"
puts "Enter a number between 1 and 100:"

#User gets the input
gets stdin user_input ; list
	
#If the user guesses the number on the first one get the winner notice
if {$user_input == $number} {
	puts "\n*********guess is correct*********\n"
}

#if they didn't guess on the first try, they get a notice of hot anyway
if {$user_input != $number} { 
	puts "----------"
	puts "hot *-*"
	puts "----------\n"
}

#gets into the while loop in order to gets the other inputs from the user when the number is guessed wrong
while {$user_input != $number} {
		
		#Gets the difference between previous input and the secrete number 
		set sub1 [expr abs($number - $user_input)] 

		puts "Try your luck again\nEnter a number between 1 and 100:"
		#Gets the second input from the user
		gets stdin user_input ; list
		
		#Gets the difference between the current input and the secrete number 
		set sub2 [expr abs($number - $user_input)] 

		#compares the new input with the secrete number which if they are same, winner
		if {$user_input == $number} {
			puts "\n*********guess is correct*********\n"

		#if the first subtract is greater than the second subtract it means that the seocnd 
		#input is closer to the secrete number which the user gets hot notice
		} elseif {$sub1 > $sub2} {
			puts "----------"			
			puts "hot *-*"
			puts "----------\n"

		#if the first subtract is less than the second subtract it means that the second 
		#input went further from the secrete number which user gets cold notice
		} elseif {$sub1 < $sub2} {
			puts "----------"
			puts "cold :("		
			puts "----------\n"

		#if in any case the subtracts are the same user gets hot anyway.this happens rarely
		} elseif {$sub1 == $sub2} {
			puts "----------"
			puts "hot *-*"		
			puts "----------\n"
		}	
}


