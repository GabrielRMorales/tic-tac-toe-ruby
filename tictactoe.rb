class TicTacToe
  #remember to go back and make each method no more than 5-10 lines ie REFACTOR BIGLY
def initialize
  @board=[["_", "_", "_"],["_", "_", "_"],["_", "_", "_"]]
  @options=["top-left","top-center","top-right",
            "center-left","center-center","center-right",
            "bottom-left","bottom-center","bottom-right"]
  @counter=0
  @gameover=false
end
def start
  puts "Welcome to Tic Tac Toe"
  while @counter<9 && @gameover==false do
  draw
  player_select
  if @counter>4
    check
  end
  end
  if @counter==9
  @gameover=true
  puts "CATS GAME"    
  end
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

def player_select
  if @counter%2==0
    sym="X"
  else
    sym="O"
  end
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
  while (decision.to_i<0||decision.to_i>8||@options[decision.to_i]==nil) do
    puts "That's not an option. Choose a number"
      decision=gets.chomp    
  end
  @options[decision.to_i]=nil
  @board[decision.to_i/3][decision.to_i%3]=sym
  @counter+=1
end

def check
  if @board.any? {|x| x==["X","X","X"]|| x==["O","O","O"] }
    puts "Player #{x[0]} wins!"
    @gameover=true
  elsif @board[0][0]=="X"&&@board[1][0]=="X"&&@board[2][0]=="X"
    puts "Player X wins!"
    @gameover=true
  elsif @board[0][1]=="X"&&@board[1][1]=="X"&&@board[2][1]=="X"
    puts "Player X wins!"
    @gameover=true
  elsif @board[0][2]=="X"&&@board[1][2]=="X"&&@board[2][2]=="X"
    puts "Player X wins!"
    @gameover=true
  elsif @board[0][0]=="X"&&@board[1][1]=="X"&&@board[2][2]=="X"
    puts "Player X wins!"
    @gameover=true
  elsif @board[2][0]=="X"&&@board[1][1]=="X"&&@board[0][2]=="X"
    puts "Player X wins!"
    @gameover=true
  elsif @board[0][0]=="O"&&@board[1][0]=="O"&&@board[2][0]=="O"
    puts "Player O wins!"
    @gameover=true
  elsif @board[0][1]=="O"&&@board[1][1]=="O"&&@board[2][1]=="O"
    puts "Player O wins!"
    @gameover=true
  elsif @board[0][2]=="O"&&@board[1][2]=="O"&&@board[2][2]=="O"
    puts "Player O wins!"
    @gameover=true
  elsif @board[0][0]=="O"&&@board[1][1]=="O"&&@board[2][2]=="O"
    puts "Player O wins!"
    @gameover=true
  elsif @board[2][0]=="O"&&@board[1][1]=="O"&&@board[0][2]=="O"
    puts "Player O wins!"
    @gameover=true
  end
end

end
game=TicTacToe.new
game.start