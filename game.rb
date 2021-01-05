class Hangman

	def initialize
		@alp_value = ('a'..'z').to_a
    @game_name = game_names.sample
		
	end

	def game_names
		[
			["cricket", "Gentle mans Game"],
			["Golf", "Big shot game"],
			["Hockey", "Indian game"],
			["Foodball", "World game"]
		]	
	end

	def begin
		puts "Your clue for the game  #{@game_name.last}...."
		puts "Clue for the game name size is #{@game_name.first.size}"
		guess = gets.chomp
		puts "please Enter the letter"
	end

end	

hang = Hangman.new
hang.begin