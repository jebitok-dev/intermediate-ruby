class Players
    attr_accessor :name, :symbol
    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end
    def description
        puts "#{@name} takes #{@symbol}"
    end
    def details 
       puts "Enter your #{@name}" 
    end
end

player_1 = Players.new("player1", "x")
player_2 = Players.new("player2", "o")