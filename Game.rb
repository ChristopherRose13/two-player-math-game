require "./Player"
require "./Turn"
require "./Inputoutput"

class Game
  include Input_output
  attr_accessor :p1, :p2, :current_player
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = self.p2
    # active_turn = P1
  end

  def play
    loop do
      self.current_player = self.current_player.name == self.p1.name ? self.p2 : self.p1
      ## initiate turn
      turn = Turn.new
      ## ask question
      self.question(turn.num_one, turn.num_two, current_player)
      quess = gets.chomp
      ## check answer/output answer
      if turn.isRight(quess) 
       self.correct_answer(current_player.name)
      else
        self.wrong_answer(current_player)
        self.current_player.subtract_life
      end
      
      ## print status/score
      
      if self.current_player.lives
        self.lives_score(p1, p2)
        self.new_turn
      end

      if self.current_player.lives <= 0
        break
      end

    end
    self.current_player = self.current_player.name == self.p1.name ? self.p2 : self.p1
    self.winner(self.current_player)
    self.game_over
  end
end