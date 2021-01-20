class Board 
    def initialize(board, board1)
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
        @board1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def display_board 
        [" #{@board[0]} | #{@board[1]} | #{@board[2]} ",
        '-----------------------------------------',
        " #{@board[3]} | #{@board[4]} | #{@board[5]} ",
        '-----------------------------------------',
        " #{@board[6]} | #{@board[7]} | #{@board[8]} "]
    end

    def display_board_update
        [" #{@board1[0]} | #{@board1[1]} | #{@board1[2]}",
        '-----------------------------------------',
        " #{@board1[3]} | #{@board1[4]} | #{@board1[5]} ",
        '-----------------------------------------',
        " #{@board1[6]} | #{@board[7]} | #{@board[8]} "]
    end

    def update_board(move, value)
        @board[move.to_i - 1] = value
    end

    possible_wins = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ].freeze

    def draw
        board.all? do |show|
            if %w[x o].include.(show)
                true
            else
                false
            end
        end
    end

    def value_validation?(move)
        move = move.to_i
        if move.between?(1, 9) && move.is_a?(Integer)
            true
        else
            false
        end
    end

    def turn(move, arr, players)
        move = move.to_i - 1
        arr[move] = players.symbol
    end

    def remaining?(move, arr)
        move = move.to_i - 1
        arr.each_with_index do |num, i|
            return true if i == move && num == ' '
            return false if i == move && num != ' '
        end
    end

    def winner?
        possible_wins.each do |i|
            win_possibilities = [board[i[0]], board[i[1]], board[i[2]]]
            return true if win_possibilities.all? { |x1| x1 == 'o' }
            return true if win_possibilities.all? { |x1|  x1 == 'x' }
        end
        false
    end
end






