#!/usr/bin/env ruby

puts "Welcome to the Tic Tac Toe game!"
# create Players class initialized with name and symbol
puts "Enter your name player_1: "
player_1 = gets.chomp
puts "#{player_1} takes symbol x"

puts "Enter your name player_2: "
player_2 = gets.chomp
puts "#{player_2} takes symbol o"

puts '--------------'
puts '| 1 | 2 | 3 |'
puts '--------------'
puts '| 4 | 5 | 6 |'
puts '--------------'
puts '| 7 | 8 | 9 |'

puts "It is your turn #{player_1}, select your move: "
# I will save the move and add the symbol
# I will update the board and diplay it again
# I will check the conditions of the game
puts "It is your turn #{player_2}, select your move: "
# I will save the move and add the symbol
# I will update the board and diplay it again
# I will check the conditions of the game

puts "Game is over! Player (either player_1 or player_2) is the winner!"
# or it will output:
puts "Game is over! The game is a draw!"

puts 'Do you want to play again(Y/n)?'
play_again = gets.chomp
# puts play_again 
# The game starts again or if players select #{play_again} or ends here!
