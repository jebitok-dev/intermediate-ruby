class Players
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def description
    puts "#{@name} has won"
  end

  def details
    puts 'Game is a draw'
  end
end
