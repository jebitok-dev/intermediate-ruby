#!/usr/bin/env ruby
# rubocop:disable Metrics/LineLength

require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/validation'

gameview = Board.new
# playerinfo = Players.new
validation = Validate.new
puts 'Welcome to the Tic Tac Toe game!'
player1 = player_1.details
def player_move(name, _players, validation, board)
  puts gameview.display_board
  puts "player #{name}, it's your turn!"
  puts "player #{name}, select a number between 1 and 9"
  selected_pos = gets.chomp

  until validation.valid_move(selected_pos)
    puts 'please enter a number between 1 to 9 and make sure it has not been selected'
  end

  validation.update_selected_move(selected_pos)

  board.update_board(selected_pos, name)
end

until board.full?
  player_move('x', validation, gameview)
  return puts 'player x has won' if gameview.winner?
  return puts 'Game is a draw' if gameview.draw?

  player_move('0', validation, gameview)
  return puts 'player o has won' if gameview.winner?
end

# rubocop:enable Metrics/LineLength
