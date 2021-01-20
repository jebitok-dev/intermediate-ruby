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