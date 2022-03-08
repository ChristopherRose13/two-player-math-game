module Input_output
  def question(num_one, num_two, player)
    puts "#{player.name}: What does #{num_one} + #{num_two} equal?"
  end

  def correct_answer(player)
    puts "#{player}: Yes! You are correct"
  end

  def wrong_answer(player)
    puts "#{player.name}: Seriously? No!"
  end

  def new_turn
    puts "---- NEW TURN ----"
  end

  def game_over
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end
  
  def lives_score (player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end
  
  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}"
  end
end