class War
	def initialize
		@player_one = Player.new
		@player_two = Player.new
	end

	def play
		while @player_one.cards.count > 0 do 
			card_one = @player_one.cards.draw
			card_two = @player_two.cards.draw
			if card_one == card_two
				puts "Tie - No One Wins!"
			elsif card_one > card_two
				@player_one.score += 1
				puts "Player two scored this hand"
			else
				@player_two.score += 1
				puts "Player two scored this hand"
			end
		end
			puts "Final Score Is"
			puts "--------------"
			puts "Player One #{@player_one.score}"
			puts "Player Two #{@player_two.score}"
	end
end


class Player
	attr_accessor :cards, :score
	def initialize
		@cards = Deck.new
		@score = 0
	end
end

class Deck
	attr_reader :cards

	def initialize
		@cards = ((1..13).to_a * 4).shuffle
	end

	def count
		@cards.count
	end

	def shuffle
		@cards = @cards.shuffle
	end

	def draw
		@cards.shift
	end
end

game = War.new
game.play