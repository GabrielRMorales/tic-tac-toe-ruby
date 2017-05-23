require "tictactoe"

describe TicTacToe do 
	let(:game) { TicTacToe.new }
	

	describe "#start" do
		context "It's a Tie" do
		it "ends game if it goes 9 turns" do
          game.instance_variable_set :@counter, 9
		  expect(game.start).to eql("CAT'S GAME")
	    end	
		end
	end

	#describe "#counter_test" do

	#	it "tests for counter" do
			
	#		game.instance_variable_set :@counter, 9
	#		expect(game.counter_test).to eql("X")
	#	end
	#end
	
	#describe "#test" do
	#	it "tests to return checks out" do
	#		expect(game.testing).to eql("checks out")
	#	end
	#end
	
end