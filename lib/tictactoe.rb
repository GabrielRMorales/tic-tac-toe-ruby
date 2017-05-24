class TicTacToe

attr_accessor :sym, :counter, :board, :options

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
    show_choices
    set_symbol
    player_select
    check if @counter>4
  end
  return "CAT'S GAME" if @counter==9
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

def show_choices
  puts "You may choose:"
  i=0
  @options.each { |x|
    print "#{i} "
    puts x==nil ? "Not available" : "#{x}"
    i+=1
  }
end

def set_symbol
  @counter%2==0 ? @sym="X": @sym="O"  
end

def player_select
  puts "Choose your move"
  decision=gets.chomp
  puts decision.to_i
  while (decision.to_i<0||decision.to_i>8||@options[decision.to_i]==nil) do
    puts "That's not an option. Choose a number"
    decision=gets.chomp    
  end
  @options[decision.to_i]=nil
  @board[decision.to_i/3][decision.to_i%3]=@sym
  @counter+=1
end

def check
  win_conditions= [
    [@board[0][0], @board[0][1],@board[0][2]],
    [@board[1][0], @board[1][1],@board[1][2]],
    [@board[2][0], @board[2][1],@board[2][2]],
    [@board[0][0], @board[1][0],@board[2][0]],
    [@board[0][1], @board[1][1],@board[2][1]],
    [@board[0][2], @board[1][2],@board[2][2]],
    [@board[0][0], @board[1][1],@board[2][2]],
    [@board[2][0], @board[1][1],@board[0][2]]   ]

  win_conditions.each do |x|
    if x.all? {|y| y==x[0] && x[0]!="_"}
      @gameover=true
      puts "Player #{x[0]} wins!"
      return "Player #{x[0]} wins!"     
    end
  end
  nil
end

end

game=TicTacToe.new
game.start