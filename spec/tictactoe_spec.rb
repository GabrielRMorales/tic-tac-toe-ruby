require "tictactoe"

describe TicTacToe do 
	let(:game) { TicTacToe.new}
	#let(:counter) {9}
	#describe "if a player has 3 symbols in a horizontal row, they win" do
	#	expect()
	#end

	#describe "#start" do
	#	context "It's a Tie" do			
	#		expect(start).to eql("CAT'S GAME")
	#	end 
	#end
	
	describe "#test" do
		it "tests to return checks out" do
			expect(game.test).to eql("checks out")
		end
	end
	
end