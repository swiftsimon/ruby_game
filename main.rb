require './question'
require './player'


# puts player1.lives
# player1.lose_life
# puts player1.lives


# create 2 new players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

puts "Welcome to my game"


# set player turn to 1 or 2
turn = 1

keep_playing = true

while keep_playing
  if (player1.lives == 0)
    puts "Player 2 wins with #{player1.lives} lives to #{player2.lives}"
    keep_playing = false
  elsif (player2.lives == 0)
    puts "Player 1 wins with #{player2.lives} lives to #{player1.lives}"
    keep_playing = false
  else
    puts "_________________"
    puts "Next Player"
    if (turn == 1)
      puts "Player 1"
    else
      puts "Player 2"
    end
  end

break if keep_playing == false


# create new question instance
new_question = Question.new
new_question.show_question

# ask player for input
input = gets.chomp.to_i

#check if answer is correct by calling check_answer on new_question
# puts new_question.check_answer?(input)

  if (new_question.check_answer?(input))
    puts "Correct"
  elsif (!new_question.check_answer?(input))
    puts "Wrong answer! Human Error!"
    if (turn == 1)
      puts "player 1 lost life"
      player1.lose_life
    elsif (turn == 2)
      puts "Player 2 lost life"
      player2.lose_life
    else
      puts "Unknown Player. Now Terminating"
      keep_playing = false
    end
  end

# change players turn
  if (turn == 1)
    puts "turn = 2 now "
    turn = 2
  elsif (turn == 2)
    puts "turn = 1 now"
    turn = 1
  else
    puts "turn error, Terminating"
    keep_playing = false

  end







# keep_playing = false

end # end while




