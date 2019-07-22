class Player
 def hand
   # Process of the following method is created in this.
   # Puts the console into an input wait state, and outputs the value the player types from the console
    puts "Enter a  number between 0 and 2"
    puts "0:Goo"
    puts "1:Choki"
    puts "2:par"
    puts ""
    player_number = gets.to_i
    while player_number > 2 || player_number < 0 do
        puts "Wrong number please try again:"
        player_number = gets.to_i
    end
    puts "you choose #{player_number}"
    player_number
 end
end

class Enemy
 def hand
   # Create processing of the method that outputs the value of goo, choki, par at random in this
   computer_choice = rand(0..2)
   puts "I choose #{computer_choice}"
   computer_choice
 end
end

class Janken
 def pon(player_hand, enemy_hand)
   # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
   # At that time, when you enter values other than draw or Goo, Choki, Par, do another Janken.
   # Show what the other party gave out of Goo, Choki, Par
   
   
   difference = player_hand - enemy_hand
   final_answer =(difference + 3)%3
   if final_answer == 2
    puts "You are the winner"
   elsif final_answer == 1
    puts "You are the looser"
   else 
    puts "it's a draw, let's continue playing..."
   
   end
 end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# The Janken method is invoked by the following description
janken.pon(player.hand, enemy.hand)