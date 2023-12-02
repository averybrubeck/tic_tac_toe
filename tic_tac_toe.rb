# tic tac toe board with display, clear and update functions
class Board
  attr_reader :board
  
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

  def update_board(position, marker)
    @board[position] = marker
  end
end

# player class with id
class Player
  attr_reader :player_id

  def initialize(player_id, marker, board)
    @player_id = player_id
    @marker = marker.to_s
    @board = board
    puts 'Invalid Input Try Again' if player_id.length > 1
  end

  def update_board(position)
    position = position.to_i
    @board.update_board(position, @marker)
    @board.draw_board
  end
end

# Game class storing the logic
class Game
  def initialize
    @board = Board.new
    @player = Player.new('X', 'X', @board)
  end

  def play
      loop do
      @board.draw_board
      puts "Player #{@player.player_id}, enter your move (0-8)"
      position = gets.chomp.to_i

      if valid_move?(position)
        @player.update_board(position)
        break if game_over?

        @player = (@player.player_id == 'X' ? Player.new('O', 'O', @board) : Player.new('X', 'X', @board))
      else
        puts 'Invalid Move, Try again'
      end
    end
  end
private

def valid_move?(position)
  position = position.to_i
  !(position.negative? || position > 8 || @board.board[position] != '?')
end

def game_over?
end

game = Game.new
game.play end