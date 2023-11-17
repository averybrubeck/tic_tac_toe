#class for human vs human game
class Player
  attr_accessor :score, :turn, :player_number

  def initialize(player_number, score, turn_number)
    @player_number = player_number
    @score = score
    @turn_number = turn
  end

  def add_score
    @score += 1
  end
end

player1 = Player.new("player1", 0, 0)
player2 = Player.new("player2", 0, 0)
puts player1.player_number
puts player2.player_number
player1.add_score
puts player1.score