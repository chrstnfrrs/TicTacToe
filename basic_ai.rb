
class BasicAI
  def initialize(board, value, num)
    @gameboard = board
    @symbol = value
    @player_num = num
  end

  def move
    puts "AI move:"
    go = true
    while(go)
      row = rand(3)
      col = rand(3)
      go = @gameboard.check_val(row,col)
    end
    @gameboard.insertVal(row, col, value)
  end
end