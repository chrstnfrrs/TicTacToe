
class GameApp

  def start_game(board)
    puts "Welcome to Tic Tac Toe \n\n"

    go = true

    while(go)
      user_menu
      input = gets().chomp.upcase
      case input
        when "A"
          puts "Player versus Player Mode!\n"
          pvp(board)
          puts "\n"
        when "B"
          puts "Easy AI Mode!\n"
        when "C"
          puts "Difficult AI Mode!\n"
        when "P"
          board.print_board
        when "Q"
          puts "Quitting Game\n"
          go = false
        else
          puts "Invalid Input\n"
      end
    end
  end

  def user_menu
    puts "Please select a gamemode: "
    puts "\tA: Player versus Player"
    puts "\tB: Easy AI "
    puts "\tC: Difficult AI"
    puts "\tQ: Quit"
  end

  def pvp(board)
    puts "Player 1 will be X's and Player 2 will be Os."

    playernum = 0

    go=true
    while(go)
      board.print_board
      player = playernum%2
      if(player==0)
        player(board,1,"X")
      else
        player(board,2, "O")
      end
      playernum = playernum + 1
      go=board.check_if_won
    end

    puts "Player " +(player+1).to_s + " won!"

  end

  def player(board, player, value)
    go = true
    while(go)
      row = prompt("Player #{player}, what row would you like to insert your #{value} into?")
      col = prompt("Player #{player}, what column would you like to insert your #{value} into?")
      go = board.check_val(row, col)
      if(go==true)
        puts "There is already a value entered at #{row+1},#{col+1}."
      end
    end
    puts "Inserting #{value} at #{row+1},#{col+1}.\n"
    board.insertVal(row,col,value)
  end

  def prompt(prompt)
    unvarified = true
    while(unvarified)
      puts prompt
      var = gets().chomp()
      var = var.to_i-1
      unvarified = check(var)
    end
    return var
  end

  def check(var)
    if(var >= 0 and var < 3)
      return false
    end
    puts "#{var+1} is invalid. Please insert a number 1-3."
    return true
  end

end
