# !/usr/bin/env ruby

require 'colorize'

require_relative '../lib/board'
require_relative '../lib/validation'

gameview = Board.new
validation = Validate.new
puts 'Welcome to the Tic Tac Toe game!'
def player_move(player_name, validation, board)
  puts board.display_board
  puts "player #{player_name}, it's your turn!"
  puts "player #{player_name}, select a number between 1 and 9"
  selected_pos = gets.chomp

  until validation.valid_move(selected_pos)
    puts 'please enter a number between 1 to 9 and make sure it has not been selected'
    selected_pos = gets.chomp
  end

  validation.update_selected_move(selected_pos)

  board.update_board(selected_pos, player_name)
end

until gameview.draw?
  player_move('X', validation, gameview)
  puts 'player X has won'
  break if gameview.winner?

  puts 'Game is a draw'
  break if gameview.draw?

  player_move('O', validation, gameview)
  puts 'player O has won'
  break if gameview.winner?
end
