def game (mychoice, compchoice)
  if mychoice == compchoice
    puts "Tie!"
  elsif (mychoice == "rock" && compchoice == "scissors") ||
        (mychoice == "paper" && compchoice == "scissors") ||
        (mychoice == "scissors" && compchoice == "scissors")
    puts "Win! :)"
  else
    puts "You lost :("
  end
end

if ARGV.length !=2
  puts "Incorrect amount of arguments (must be 2)"
else
  mychoice = ARGV[0].downcase
  compchoice = ARGV[1].downcase
  correctchoice = ["rock", "paper", "scissors"]
  if !correctchoice.include?(mychoice) || !correctchoice.include?(compchoice)
    puts "Incorrect input"
  else
    result = game(mychoice,compchoice)
    puts result
  end
end