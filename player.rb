
class Player
  def initialize(board, num, value)
    @gameboard = board
    @num = num
    @sym = value
  end

  def move()
    go = true
    while(go)
      row = prompt("Player #{@num}, what row would you like to insert your #{@sym} into?", 0, 2)
      col = prompt("Player #{@num}, what column would you like to insert your #{@sym} into?", 0, 2)
      go = @gameboard.check_val(row, col)
      if(go==true)
        puts "There is already a value entered at #{row+1},#{col+1}."
      end
    end
    puts "Inserting #{@sym} at #{row+1},#{col+1}.\n"
    board.insertVal(row,col,@sym)
  end

  def prompt(prompt, row, col)
    unvarified = true
    while(unvarified)
      puts prompt
      var = gets().chomp()
      var = var.to_i-1
      unvarified = check(var, row, col)
    end
    return var
  end

  def check(var, row, col)
    if(var >= row and var <= col)
      return false
    end
    puts "#{var+1} is invalid. Please insert a number #{row+1}-#{col+1}."
    return true
  end
end