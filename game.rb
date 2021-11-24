#じゃんけん
puts "じゃんけん・・・"

def janken
 puts "[0]グー[1]チョキ[2]パー[3]戦わない"

 player_hand = gets.to_i
 program_hand = rand(3)

 win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
 lose = !(win)

 puts "ぽんっ!\n--------------------------------"
 jankens = ["グー","チョキ","パー","戦わない"]
 puts "あなたの手:#{jankens[player_hand]}\n相手の手:#{jankens[program_hand]}"
 puts "--------------------------------"

 if player_hand == program_hand
	puts "あいこで・・・"
	return true
 elsif(player_hand == 3 )||(program_hand == 3)
    puts "終わり"
 elsif win
  puts "あなた：勝ち！"
  @result = "win"
  return false
 elsif lose
  puts "あなた：負け・・・"
  @result = "lose"
  return false
 end
end

next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイ
def hoi
 if @result == "win"
  puts "あっちむいて・・・"
  puts "[0]上[1]下[2]右[3]左"

  player_hand = gets.to_i
  program_hand = rand(4)

  puts "ほいっ!\n--------------------------------"
  hands = ["上","下","右","左"]
  puts "あなたの手:#{hands[player_hand]}\n相手の手:#{hands[program_hand]}"
  puts "--------------------------------"

  draw = player_hand != program_hand

  if player_hand == program_hand
   puts "あなたの勝ち！"
  elsif draw
   puts "引き分け!じゃんけん・・・"
   @result = "draw"
  end
 end

 if @result == "lose"
  puts "あっちむいて・・・"
  puts "[0]上[1]下[2]右[3]左"
  
  player_hand = gets.to_i
  program_hand = rand(4)
  
  puts "ほいっ!\n--------------------------------"
  hands = ["上","下","右","左"]
  puts "あなたの手:#{hands[player_hand]}\n相手の手:#{hands[program_hand]}"
  puts "--------------------------------"
  
  draw = player_hand != program_hand
  
  if player_hand == program_hand
   puts "あなたの負け・・・"
    
  elsif draw
   puts "引き分け!じゃんけん・・・"
   @result = "draw"
  end
 end
  if @result == "draw"
   janken
   hoi
  end
end

hoi()