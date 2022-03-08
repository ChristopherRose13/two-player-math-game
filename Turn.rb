class Turn
  attr_reader :num_one, :num_two
  def initialize
    @num_one = rand(1..21)
    @num_two = rand(1..21)
    @answer = self.num_one + self.num_two
  end

  def isRight (guess)
    puts "#{guess}, #{@answer} in Turn.rb"   
    puts "#{guess.to_i == @answer.to_i}"
    guess.to_i == @answer.to_i
  end
end