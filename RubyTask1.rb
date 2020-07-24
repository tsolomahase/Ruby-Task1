class Player
  def hand
    puts " Please pick an option "
    puts "0:Goo, 1:CHika, 2:Par"
    input_hand = gets.to_i


    j=0
      while j == 0 do

        if  input_hand == 0 || input_hand == 1 || input_hand == 2
        j = 1
        else
          j=0
          puts " Invalid Choice , Please insert again"
          puts "0:Goo, 1:チョキ, 2:Par"
          input_hand = gets.to_i

        end

     end
     return input_hand
  end

end

class Enemy
  def hand
    enemy_hand = rand(0..2)
    return enemy_hand
  end

end

class Janken
  attr_accessor :input_hand, :enemy_hand

  def pon(player_hand, enemy_hand)
    puts "You chose  #{input_hand} 。"
    puts "Your enemy Chose #{enemy_hand} 。"

      if input_hand == enemy_hand
         puts "It's a tie , Play again"
         return true
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
         puts "You Won!"
         return false
     else
        puts " You Lost , OMG !"
        return false
     end
 end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game=true

while next_game
  next_game = janken.pon(player.hand, enemy.hand)
end
