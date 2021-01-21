class Board 
    attr_reader :board

    def initialize
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

        @possible_wins = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ]
    end

    def display_board
       "\n| #{@board[0]} | #{@board[1]} | #{@board[2]} |
        \n| #{@board[3]} | #{@board[4]} | #{@board[5]} |
        \n| #{@board[6]} | #{@board[7]} | #{@board[8]} |"
    end

    def update_board(move, value)
        @board[move.to_i - 1] = value
    end

    def winner
        @possible_wins.each do |x|
            one = x[0]
            two = x[1]
            three = x[2]
            return true if @board[one] == @board[two] && @board[one] == @board[three]
        end
        false
    end
    
    def draw?
        @board.each do |x|
            return false if x.is_a? Numeric
        end
        true
    end
end






