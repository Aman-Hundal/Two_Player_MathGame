class Question
  attr_reader :answer, :num_one, :num_two

  def initialize()
    @num_one = rand(1..21)
    @num_two = rand(1..21)
    @answer = @num_one + @num_two
  end

  def to_s
    "What is the sum of #{self.num_one} and #{self.num_two}?"
  end

end