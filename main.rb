require "./Player.rb"
require "./Question.rb"
require "./Game.rb"

choice = ""
puts "Player 1, what is your name?"
player_1 = gets.chomp()
puts "Player 2, what is your name?"
player_2 = gets.chomp()

new_game = Game.new(Player.new(player_1), Player.new(player_2), Question)
new_game.start()

puts "Play again?"
choice = gets.chomp()
if (choice.downcase.start_with?("y"))
  new_game = Game.new(Player.new(player_1), Player.new(player_2), Question)
  new_game.start()
end

puts "Goodbye"