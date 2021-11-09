class Player
  attr_accessor :name, :life

  def initialize(n)
    @name = n
    @life = 3
  end

  def remove_life
    self.life -= 1
    puts "#{self.name} has lost 1 life."
  end

end