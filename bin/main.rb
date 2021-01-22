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
else
  puts 'Game is over! The game is a draw!'
end
# or it will output
# Continue the loop until one player wins or the game ends with a draw
# Winner is declared or a Draw is declared
# game_on = false

puts 'Do you want to play again(Y/n)?'
play_again = gets.chomp
puts play_again
# "The game starts again and repeats same steps if players selects #{play_again}
# or ends here!""
