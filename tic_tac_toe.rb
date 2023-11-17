#class for human vs human game
class HumanGame
  attr_accessor :score, :turn, :player1, :player2

  def initialize(p1, p2, s, t)
    @player1 = p1
    @player2 = p2
    @score = s
    @turn = t
  end
end