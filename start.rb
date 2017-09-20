require_relative '../TicTacToe/board'
require_relative 'game_app'

gameboard = GameApp.new
board = Board.new

gameboard.start_game(board)