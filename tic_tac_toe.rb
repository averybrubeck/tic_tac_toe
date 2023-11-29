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
end

# Game class storing the logic
class Game
  def initialize
    @board = Board.clear_board
    @current_player = 'X'
  end

  def play
    loop do
      @board.draw_board
      puts "Player #{current_player}, enter your move (0-8)"
      position = gets.chomp.to_i

      if valid_move?(position)
        @board.update_board_o(position)
        break if game_over?

        @current_player = (current_player == 'X' ? 'O' : 'X')
      else
        puts "Invalid Move, Try again"
      end
    end
  end
end

private

def valid_move?(position)
end

def game_over?
end
