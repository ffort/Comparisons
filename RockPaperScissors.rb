#Goals
  #Ask the player if they pick rock,paper or scissors
  #Have the computer chose its move
  #Compare the choices and decide who wins
  #Print Results

#Logic
  #Rock > Scissors    Paper > Rock          Scissors > Paper
  #Rock < Paper       Paper < Scissors      Scissors < Rock
  #Rock = Rock        Paper = Paper         Scissors = Scissors


def user_choice
  puts "Rock,Paper, or Scissors?"
    @player_choice = gets.chomp()
    cpu_choice
end

def cpu_choice
  number = rand(4-1) + 1

  case number
    when 1
      computer_choice = "Rock"
    when 2
      computer_choice = "Paper"
    when 3
      computer_choice = "Scissors"
  end

  game(@player_choice,computer_choice)
end


def game(player_choice,cpu_choice)

  if player_choice == "Rock" && cpu_choice == "Scissors"
    #player_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. You Win!"
  elsif player_choice == "Rock" && cpu_choice == "Paper"
    #cpu_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. The computer wins"
  elsif player_choice == "Rock" && cpu_choice == "Rock"
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. It is a draw"
  elsif player_choice == "Paper" && cpu_choice == "Rock"
    #player_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. You Win!"
  elsif player_choice == "Paper" && cpu_choice == "Scissors"
    #cpu_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. The computer wins"
  elsif player_choice == "Paper" && cpu_choice == "Paper"
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. It is a draw"
  elsif player_choice == "Scissors" && cpu_choice == "Paper"
    #player_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. You Win!"
  elsif player_choice == "Scissors" && cpu_choice == "Rock"
    #cpu_choice.score = +1
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. The computer wins"
  elsif player_choice == "Scissors" && cpu_choice == "Scissors"
    puts "You chose #{player_choice} and the computer chose #{cpu_choice}. It is a draw"
  end

end

user_choice