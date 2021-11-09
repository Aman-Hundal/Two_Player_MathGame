class Game

  attr_accessor :question, :player_1, :player_2
  
  def initialize(p1, p2, q)
    @player_1 = p1
    @player_2 = p2
    @question = q
  end

  def start()
    game_on = true
    while(game_on)
      puts "-------- Player 1 Turn ----------"
      new_question = self.question.new()

      puts "#{self.player_1.name}: What is the sum of #{new_question.num_one} and #{new_question.num_two}?"
      choice = gets.chomp()

      # puts "#{self.player_1.name}: #{choice}"

      if (choice.to_i != new_question.answer)
        puts "Really? Nope!"
        self.player_1.remove_life
      else 
        puts "Correct! You are pretty smart eh?"
      end

      if (self.player_1.life <= 0)
        puts "Game over, #{self.player_2.name} wins with #{self.player_2.life} lives remaining."
        game_on = false
        break
      end
      
      puts "Current lives remaining:\n#{self.player_1.name}: #{self.player_1.life}\n#{self.player_2.name}: #{self.player_2.life}"

      puts "-------- Player 2 Turn ----------"
      new_question = self.question.new()

      puts "#{self.player_2.name}: What is the sum of #{new_question.num_one} and #{new_question.num_two}?"
      choice = gets.chomp()

      # puts "#{self.player_2.name}: #{choice}"

      if (choice.to_i != new_question.answer)
        puts "Really? Nope!"
        self.player_2.remove_life
      else 
        puts "Correct! You are pretty smart eh?"
      end

      if (self.player_2.life <= 0)
        puts "Game over, #{self.player_1.name} wins with #{self.player_1.life} lives remaining."
        game_on = false
        break
      end
      
      puts "Current lives remaining:\n#{self.player_1.name}: #{self.player_1.life}\n#{self.player_2.name}: #{self.player_2.life}"
    end
  end
end