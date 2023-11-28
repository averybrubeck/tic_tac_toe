# tic tac toe board with display, clear and update functions

class Board
  def initialize(player_id)
    @player_id = player_id
  end

  def clear_board
    board = ['?', '?', '?', '?', '?', '?', '?', '?', '?']
    puts board.each_slice(3).map { |row| row.join(" | ") }.join("\n" + "-"*11 + "\n")
  end
end

new_board = Board.new(1)
new_board.clear_board