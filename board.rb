
class Board

  def initialize()
    @gameboard = [["  ", " ", " "],["  ", " ", " "],["  ", " ", " "]]
  end

  def  print_board()

    puts @gameboard[0][0] + " | " + @gameboard[0][1] + " | " + @gameboard[0][2]
    puts "--- --- ---"
    puts @gameboard[1][0] + " | " + @gameboard[1][1] + " | " + @gameboard[1][2]
    puts "--- --- ---"
    puts @gameboard[2][0] + " | " + @gameboard[2][1] + " | " + @gameboard[2][2]
  end

  def insertVal(row, col, value)
    @gameboard[row][col] = value
  end

  def check_val(row,col)
    if((@gameboard[row][col]=="X") or (@gameboard[row][col]=="0"))
      return true
    end
    return false
  end

  def check_if_won
    good = true
    good = horiz_check(good)
    good = vert_check(good)
    good = diagonal_check(good)
    return good
  end

  def horiz_check(good)
    for i in 0..2
      if((@gameboard[i][0] == @gameboard[i][1] and
      @gameboard[i][0]== @gameboard[i][2])and(@gameboard[i][0]=="X"or@gameboard[i][0]=="O"))
        good = false
      end
    end
    return good
  end

  def vert_check(good)
    for i in 0..2
      if((@gameboard[0][i] == @gameboard[1][i] and
      @gameboard[0][i]== @gameboard[2][i])and(@gameboard[0][i]=="X"or@gameboard[0][i]=="O"))
        good = false
      end
    end
  end

  def diagonal_check(good)
      if((@gameboard[0][0]==@gameboard[1][1] and
      @gameboard[0][0]==@gameboard[2][2])and(@gameboard[0][0]=="X"or@gameboard[0][0]=="O"))
        good = false
      end
      if((@gameboard[0][2] == @gameboard[1][1] and
      @gameboard[0][2]== @gameboard[2][0])and(@gameboard[0][2]=="X"or@gameboard[0][2]=="O"))
        good = false
      end
    return good
  end

end

