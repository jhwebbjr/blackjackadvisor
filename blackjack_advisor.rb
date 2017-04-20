require 'pry'

soft_data = {
  13 => {2 => "Hit", 3 => "Hit", 4 => "Double or Hit", 5 => "Double or Hit", 6 => "Double or Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  14 => {2 => "Hit", 3 => "Hit", 4 => "Double or Hit", 5 => "Double or Hit", 6 => "Double or Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  15 => {2 => "Hit", 3 => "Hit", 4 => "Double or Hit", 5 => "Double or Hit", 6 => "Double or Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  16 => {2 => "Hit", 3 => "Hit", 4 => "Double or Hit", 5 => "Double or Hit", 6 => "Double or Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  17 => {2 => "Double or Hit", 3 => "Double or Hit", 4 => "Double or Hit", 5 => "Double or Hit", 6 => "Double or Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  18 => {2 => "Stand", 3 => "Double or Stand", 4 => "Double or Stand", 5 => "Double or Stand", 6 => "Double or Stand or Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "a"=> "Stand"},
  19 => {2 => "Stand", 3 => "Stand", 4 => "Stand", 5 => "Stand", 6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "a"=> "Stand"},
  20 => {2 => "Stand", 3 => "Stand", 4 => "Stand", 5 => "Stand", 6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "a"=> "Stand"},
  21 => {2 => "Stand", 3 => "Stand", 4 => "Stand", 5 => "Stand", 6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "a"=> "Stand"}
}

hard_data = {
  5 => {2 => "Hit", 3=> "Hit", 4=> "Hit", 5=> "Hit", 6=> "Hit", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  6 => {2 => "Hit", 3=> "Hit", 4=> "Hit", 5=> "Hit", 6=> "Hit", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  7 => {2 => "Hit", 3=> "Hit", 4=> "Hit", 5=> "Hit", 6=> "Hit", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  8 => {2 => "Hit", 3=> "Hit", 4=> "Hit", 5=> "Double or Hit", 6=> "Double or Hit", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  9 => {2 => "Double or Hit", 3=> "Double or Hit", 4=> "Double or Hit", 5=> "Double or Hit", 6=> "Double or Hit", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  10 => {2 => "Double or Hit", 3=> "Double or Hit", 4=> "Double or Hit", 5=> "Double or Hit", 6=> "Double or Hit", 7=> "Double or Hit", 8=> "Double or Hit", 9=> "Double or Hit", 10=> "Hit", "a" => "Hit"},
  11 => {2 => "Double or Hit", 3=> "Double or Hit", 4=> "Double or Hit", 5=> "Double or Hit", 6=> "Double or Hit", 7=> "Double or Hit", 8=> "Double or Hit", 9=> "Double or Hit", 10=> "Double or Hit", "a" => "Double or Hit"},
  12 => {2 => "Hit", 3=> "Hit", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  13 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  14 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  15 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  16 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a" => "Hit"},
  17 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a" => "Stand"},
  18 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a" => "Stand"},
  19 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a" => "Stand"},
  20 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a" => "Stand"},
  21 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a" => "Stand"}
}

pair_data = {
  4 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Split", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a"=> "Hit"},
  6 => {2 =>"Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "Hit", 10 => "Hit", "a"=> "Hit"},
  8 => {2 => "Hit", 3=> "Hit", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Hit", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a"=> "Hit"},
  10 => {2 => "Double or Hit", 3=> "Double or Hit", 4=> "Double or Hit", 5=> "Double or Hit", 6=> "Double or Hit", 7=> "Double or Hit", 8=> "Double or Hit", 9=> "Double or Hit", 10=> "Hit", "a"=> "Hit"},
  12 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Split", 8=> "Hit", 9=> "Hit", 10=> "Hit", "a"=> "Hit"},
  14 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Split", 8=> "Split", 9=> "Hit", 10=> "Stand", "a"=> "Hit"},
  16 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Split", 8=> "Split", 9=> "Split", 10=> "Split", "a"=> "Split"},
  18 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Stand", 8=> "Split", 9=> "Stand", 10=> "Stand", "a"=> "Split"},
  20 => {2 => "Stand", 3=> "Stand", 4=> "Stand", 5=> "Stand", 6=> "Stand", 7=> "Stand", 8=> "Stand", 9=> "Stand", 10=> "Stand", "a"=> "Stand"},
  22 => {2 => "Split", 3=> "Split", 4=> "Split", 5=> "Split", 6=> "Split", 7=> "Split", 8=> "Split", 9=> "Split", 10=> "Split", "a"=> "Split"},
}

def soft_strategy(soft_data, player_hand_total, dealer_card)
  soft_data[player_hand_total][dealer_card]
end

def hard_strategy(hard_data, player_hand_total, dealer_card)
  hard_data[player_hand_total][dealer_card]
end

def pair_strategy(pair_data, player_hand_total, dealer_card)
  pair_data[player_hand_total][dealer_card]
end

def facecard_converter(player_first_card_unconverted)
  if "k" == player_first_card_unconverted
    10
  elsif "q" == player_first_card_unconverted
    10
  elsif "j" == player_first_card_unconverted
    10
  elsif "a" == player_first_card_unconverted
    11
  else
    player_first_card_unconverted.to_i
  end
end


puts "Please enter your first card."
player_first_card_unconverted = gets.chomp
player_first_card = facecard_converter(player_first_card_unconverted)
puts "Please enter your second card."
player_second_card_unconverted = gets.chomp
player_second_card = facecard_converter(player_second_card_unconverted)
player_hand_total = player_first_card + player_second_card
puts "Please enter the dealer's card."
dealer_card_unconverted = gets.chomp
dealer_card = facecard_converter(dealer_card_unconverted)


if player_first_card && player_second_card == 21
  puts "Blackjack. You win."
elsif player_first_card == "a"
  puts "Your optimal move is #{soft_strategy(soft_data, player_hand_total, dealer_card)}."
elsif player_first_card == player_second_card
  puts "Your optimal move is #{pair_strategy(pair_data, player_hand_total, dealer_card)}."
else
  puts "Your optimal move is #{hard_strategy(hard_data, player_hand_total, dealer_card)}."
end
