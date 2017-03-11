# Code your solution here!
def prompt
  puts "Guess a number between 1 and 6."
end

def exit
  puts "Goodbye!"
end

def random_number
  rand(1..6)
end

def correct_guess
  puts "You guessed the correct number!"
  prompt
end

def incorrect_guess
  puts "The computer guessed #{random_number}."
  prompt
end

def run_guessing_game
  random_number
  prompt
  while response = gets.chomp
    if response == random_number.to_s
      correct_guess
    else response != random_number.to_s
      incorrect_guess
    end
    break if response == "exit"
  end
  exit
end

run_guessing_game
