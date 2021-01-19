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

puts "It is your turn #{player1}, Select your move: "
positionx = gets.chomp
# I will save the position and add the symbol
# I will display updated board after player's move
# I will check the conditions of the game(If user selects valid/invalid move)
puts "It is your turn #{player2}, Enter your move: "
position0 = gets.chomp
# I will save the position and add the symbol
# I will display updated board after player's move
# I will check the conditions of the game(If user selects valid/invalid move)

puts "Game is over! Player (either player1 or player2) is the winner!"
# or it will output:
puts "Game is over! The game is a draw!"

puts 'Do you want to play again(Y/n)?'
play_again = gets.chomp
puts play_again
# The game starts again and repeats same steps if players selects #{play_again} or ends here!
