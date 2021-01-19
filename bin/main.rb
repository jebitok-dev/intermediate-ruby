#!/usr/bin/env ruby

puts 'Welcome to the Tic Tac Toe game!'
# create Players class initialized with name and symbol
puts 'Enter your name player1: '
player1 = gets.chomp
puts "#{player1} takes symbol x"

puts 'Enter your name player2: '
player2 = gets.chomp
puts "#{player2} takes symbol o"

puts '--------------'
puts '| 1 | 2 | 3 |'
puts '--------------'
puts '| 4 | 5 | 6 |'
puts '--------------'
puts '| 7 | 8 | 9 |'

# Show players conditions (can't pick already picked number or invalid number
# (not within 1-9))
puts "It is your turn #{player1}, Select your move: "
# positionx = gets.chomp
# Check if #{Player1} makes a valid move. If not, give a warning and repeat the
# move selection.
# "if #{player1} move is invalid. Make a valid move by picking a number
# between (1 - 9)."
puts "I will mark user's picked move and display updated board"

puts "It is your turn #{player2}, Enter your move: "
# position0 = gets.chomp
# Check if #{Player2} makes a valid move. If not, give a warning and repeat the
# move selection.
# "Note: if #{player2} move is invalid. Make a valid move by picking a number
#  between (1 - 9)."
puts "I will mark user's picked move and display updated board"
if Winner?
  puts 'Game is over! Player (either player1 or player2) is the winner!'
end
# or it will output
puts 'Game is over! The game is a draw!' if Draw?
# Continue the loop until one player wins or the game ends with a draw
# Winner is declared or a Draw is declared
# game_on = false

puts 'Do you want to play again(Y/n)?'
play_again = gets.chomp
puts play_again
# "The game starts again and repeats same steps if players selects #{play_again}
# or ends here!""
