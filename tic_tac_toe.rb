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
end

# player class with id
class Player
  def initialize(player_id, marker)
    @player_id = player_id
    @marker = marker.to_s
    puts 'Invalid Input Try Again' if player_id.length > 1
  end

  def update_board(position, marker)
    position = position.to_i
    @board[position] = marker
    draw_board
  end
end

# Game class storing the logic
class Game
  def initialize
    @board = Board.clear_board
    @current_player = Player.player_id
  end

  def play
    loop do
      @board.draw_board
      puts "Player #{current_player}, enter your move (0-8)"
      position = gets.chomp.to_i

      if valid_move?(position)
        @board.update_board_o(position, marker)
        break if game_over?

        @current_player = (current_player == 'X' ? 'O' : 'X')
      else
        puts 'Invalid Move, Try again'
      end
    end
  end
end

private

def valid_move?(position)
  position = position.to_i
  true unless position.negative? || position > 8
end

def game_over?
end
