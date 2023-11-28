# tic tac toe board with display, clear and update functions
class Board
  def initialize(player_id)
    @player_id = player_id
  end

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
end

board = Board.new(1)
board.display_board(0)
