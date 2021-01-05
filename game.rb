class Hangman

	def initialize
		@alp_value = ('a'..'z').to_a
    @game_name = game_names.sample
		@lives = 5
		@correct_gusses = []
    @word_length = ""
		@game_name.first.size.times do
			 @word_length += "_ "
		end
	end

	def game_names
		[
			["cricket", "Gentle mans Game"],
			["Golf", "Big shot game"],
			["Hockey", "Indian game"],
			["Foodball", "World game"]
		]	
	end

	def word_size last_guess = nil
		update_teaser(last_guess) unless last_guess.nil?
    puts @word_length
  end

  def update_teaser last_guess
  	new_teaser = @word_length.split
  	new_teaser.each_with_index do |letter, index|
     if letter == '_' && @game_name.first[index] == last_guess
      new_teaser[index] = last_guess
     end  
  	end	
  	@word_length = new_teaser.join(' ')
  end

  def make_guess
  	if @lives > 0
	  	puts "please Enter the letter"
	  	guess = gets.chomp
	  	good_guess = @game_name.first.include? guess.to_s
	  	
	  	if good_guess
	  		puts "good guess"
	  		word_size guess
	  		if @game_name.first == @word_length.split.join
	  			puts "tou done it thanks for playing"
	  		else	
	  			make_guess
	  	  end
	  	else
	  		@lives -= 1
	  	  puts "Sorry You went wrong #{@lives} guess left"
	  	  make_guess	
	  	end
	  else
	  	puts "you cant continue thank you"
	  end	
	end

	def game_clues
		puts "Your clue for the game name is #{@game_name.last}...."
		puts "Clue for the game name size is #{@game_name.first.size} long"

		puts "please tpe exit to exit anyware in the game"
	end

	def begin
		game_clues
    word_size
		make_guess
	end

end	

hang = Hangman.new
hang.begin
#hang.update_teaser 'C'