#HELLO
require 'rspec'

class Game

	attr_reader :frames 

    def initialize 
    	@frames = (1..10).map{Frame.new([3,5])}
    end

	def score (line)
 		line.to_i
	end

end

class Frame

	attr_reader :tries 

    def initialize(tries)
    	@tries = tries
    end

    def score
    	@tries.inject(:+)
    end

end



describe Game do
    it "function must return an Integer" do
     	game = Game.new
        expect(game.score("XXXXXXXXXXXX")).to be_a(Integer)
	end
    it "game must have 10 frames" do
     	game = Game.new
        expect(game.frames.size).to eq(10)
	end
  	it "frame must have 2 tries" do
     	game = Game.new
        expect(game.frames[0].tries.size).to eq(2)
	end
    it "if failed to drop all pins within two tries, score is the sum of pines" do
     	game = Game.new
        expect(game.frames.first.score).to eq(8)
        # expect(game.tries[3,7]).to eq(10)
	end


 #    it "function to convert bowling game into numbers" do
 #        expect(roll("XXXXXXXXXXXX")).to eq(300)
	# end
end
