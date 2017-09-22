require_relative '../TicTacToe/game_app'
require_relative '../TicTacToe/board'
require_relative '../TicTacToe/player'
require_relative '../TicTacToe/basic_ai'
require_relative '../TicTacToe/advanced_ai'

gameboard = GameApp.new
board = Board.new

gameboard.start_game(board)