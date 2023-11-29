# tic tac toe board with display, clear and update functions
class Board
  def initialize(player_id)
    @player_id = player_id
    @board = ['?', '?', '?', '?', '?', '?', '?', '?', '?']
  end

  def draw_board
    puts @board.each_slice(3).map { |row| row.join(" | ") }.join("\n" + "-"*10 + "\n")
  end

  def clear_board
    @board = ['?', '?', '?', '?', '?', '?', '?', '?', '?']
    draw_board
  end

  def update_board_x(position)
    position = position.to_i
    @board[position] = 'x'
    draw_board
  end

  def update_board_o(position)
    position = position.to_i
    @board[position] = 'o'
    draw_board
  end
end

new_board = Board.new(1)
new_board.clear_board
new_board.update_board_x(1)
new_board.update_board_o(0)