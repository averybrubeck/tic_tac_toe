# tic tac toe board with display, clear and update functions
class Board
  def initialize
    @board = ['?', '?', '?', '?', '?', '?', '?', '?', '?']
    puts "Player 1's Turn"
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

# player class with id
class Player
  def initialize(id)
    @id = id
    puts "You are Player #{id}"
  end
end
player1 = Player.new(1)
player2 = Player.new(2)
game_board = Board.new
game_board.draw_board