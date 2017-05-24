require "tictactoe"

describe TicTacToe do 
	let(:game) { TicTacToe.new }

	it "sets the board data" do
		expect(game.board).to eql([["_", "_", "_"],["_", "_", "_"],["_", "_", "_"]])
	end

	it "prepares user's options" do
		expect(game.options).to eql(["top-left","top-center","top-right",
            "center-left","center-center","center-right",
            "bottom-left","bottom-center","bottom-right"])
	end

	describe "#start" do
		context "It's a Tie" do
			it "ends game if it goes 9 turns" do
	          game.instance_variable_set :@counter, 9
			  expect(game.start).to eql("CAT'S GAME")
		    end	
		end


	end

	describe "#draw" do
		it "displays empty board when game starts" do
			game.instance_variable_set :@counter, 0
			expect{game.draw}.to output("Board:\n___\n___\n___\n").to_stdout
		end
	end


	describe "#set_symbol" do
			it "sets the @sym based on the counter" do
	          game.instance_variable_set :@counter, 2
			  expect(game.set_symbol).to eql("X")
		    end	

	end

	
	describe "#check" do
		it "checks if top row is all X" do
			game.instance_variable_set :@board, [["X","X","X"],["_", "_", "_"],["_", "_", "_"]]
			expect(game.check).to eql("Player X wins!")
		end

		it "checks if middle row is all X" do
			game.instance_variable_set :@board, [["O","X","O"],["X", "X", "X"],["O", "_", "_"]]
			expect(game.check).to eql("Player X wins!")
		end
		
		it "checks if left column is all O" do
			game.instance_variable_set :@board, [["O","X","X"],["O", "_", "X"],["O", "_", "_"]]
			expect(game.check).to eql("Player O wins!")
		end
		
		it "checks if diagonal column is all O" do
			game.instance_variable_set :@board, [["X","X","O"],["O", "O", "X"],["O", "_", "_"]]
			expect(game.check).to eql("Player O wins!")
		end

		it "checks if there are not enough pieces" do
			game.instance_variable_set :@board, [["X","_","O"],["_", "_", "_"],["O", "_", "X"]]
			expect(game.check).to eql(nil)
		end

	end
end