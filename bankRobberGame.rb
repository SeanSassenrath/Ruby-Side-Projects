
# "choice" creates the system of outcomes based on user input
def choice

	rob = 1 + rand(2)
	host = 1 + rand(49)
	cop = 1 + rand(14)

	puts "You look around and see #{rob} robbers in front of you, #{host} hostages beside you, and #{cop} cops outside."

	puts "what do you want to do?"
	puts "You can run, hide or call the cops."

	choice = $stdin.gets.chomp.downcase

	if choice == "run" && rob >= 2
		puts "You tried to run, but there were too many robbers.  You lose."
	elsif choice == "hide" && cop >= 10
		puts "You wait, but the cops don't raid fast enough.  Maybe you should have called!  You lose."
	elsif choice == "call the cops" && cop < 10
		puts "You call the cops and they raid the bank without reinforcements.  You lose."
	elsif choice != "run" && choice != "hide" && choice != "call the cops"
		puts "You decide to #{choice}.  The robbers laugh and put you out of your misery.  You lose."
	else
		puts "Wise choice!  You decided to #{choice} at the right time!  You win!"
	end
end	

# "start" sets the stage of the game based on user input
def start
	puts "You're at the bank to deposit a check."
	puts "All of a sudden, 7 bank robbers with guns appear!"
	puts "You have a split second to run into one of three rooms in the bank"
	puts "There's the: Valut -- Main Room -- Teller Office"

	room = $stdin.gets.chomp.downcase

	if room == "valut"
		puts "You make it to the valut and run for cover."
		choice
	elsif room == "main room"
		puts "You freeze and fall to the floor in panic."
		choice
	elsif room == "teller office"
		puts "You dash to the teller offices and jump behind a desk."
		choice
	else
		puts "You're caught in the inital crazyness.  You lose."
	end
end

start

		
