class TicTacToe
  #remember to go back and make each method no more than 5-10 lines ie REFACTOR BIGLY
def initialize
  @board=[["_", "_", "_"],["_", "_", "_"],["_", "_", "_"]]
  @options=["top-left","top-center","top-right",
            "center-left","center-center","center-right",
            "bottom-left","bottom-center","bottom-right"]
  @counter=0
end
def start
  puts "Welcome to Tic Tac Toe"
  while @counter<8 do
  draw
  player_select("X")
  draw
  player_select("O")
  end
  #request player 1/X to choose
  #increment counter
  #remove player 1's choice from possibilities  
  #show board
  #request player 2/O to choose
  #remove player 2's choice from possibilities 

  #do start multiple times to apply DRY

  #request player 1/X to choose
  #increment counter
  #remove player 1's choice from possibilities  
  #show board
  #request player 2/O to choose
  #remove player 2's choice from possibilities 

  #request player 1/X to choose
  #increment counter
  #remove player 1's choice from possibilities  
  #show board && check if player 1 has won
  #request player 2/O to choose
  #remove player 2's choice from possibilities 
  #show board && check if player 2 has won

end

def draw
  puts "Board:"

@board.each { |x| 
x.each { |y|
print y
}
puts ""
}
end

def player_select(sym)
  @counter+=1
  puts "You may choose:"
  i=0
  @options.each {
    |x|
    print "#{i} "
    if x==nil
      puts "Not available"
    else
    puts x
    end
    i+=1
  }
  "Choose your move"
  decision=gets.chomp
  puts decision.to_i
  #puts decision.to_s
  #puts decision==decision.to_s
  while (decision.to_i<0||decision.to_i>8||@options[decision.to_i]==nil) do
    puts "That's not an option. Choose a number"
      decision=gets.chomp    
  end
  @options[decision.to_i]=nil
  @board[decision.to_i/3][decision.to_i%3]=sym

end
end
game=TicTacToe.new
game.start