class Player
  def hand
    #The player will be asked to input their number 
    puts "Enter a  number between 0 and 2"
    puts "0:Goo", "1:Choki", "2:par"
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
    #computer choose number randomly
    computer_choice = rand(0..2)
    puts "I choose #{computer_choice}"
    computer_choice
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    #calculating results and make decision if it's a win, loose or draw   
    difference = player_hand - enemy_hand
    final_answer =(difference + 3)%3
    if final_answer == 2
      puts "You are the winner"
    elsif final_answer == 1
      puts "You are the looser"
    else 
      puts "it's a draw, let's continue playing..."
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand, enemy.hand)
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# The Janken method is invoked by the following description
janken.pon(player.hand, enemy.hand)