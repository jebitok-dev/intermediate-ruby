class Validate < Board 
    def initialize(valid_move, selected_pos) 
        @valid_move = %w[1 2 3 4 5 6 7 8 9]
        @selected_pos = []
    end

    def valid_move
        @valid_move.include?(move) && !@selected_pos.include?(move) 
    end

    def update_selected_move(move)
        @selected_pos.push(move)
    end
end