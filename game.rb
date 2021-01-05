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

	def word_size
		word_length = ""
		@game_name.first.size.times do
			 word_length += "_ "
		end
    puts word_length
  end

  def make_guess
  	puts "please Enter the letter"
  	guess = gets.chomp
  	good_guess = @game_name.first.include? guess.to_s
  	if good_guess
  		puts "good guess"
  	else
  	  puts "Sorry You went wrong guess"	
  	end
	end

	def game_clues
		puts "Your clue for the game name is #{@game_name.last}...."
		puts "Clue for the game name size is #{@game_name.first.size} long"
	end

	def begin
		game_clues
    word_size
		make_guess
	end

end	

hang = Hangman.new
hang.begin