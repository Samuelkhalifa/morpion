class Show

  def initialize
    system("clear")
    puts "\n"
    puts "\s"*18 +"|#################################|"
    puts "\s"*18 +"|Welcome to Noughts and Crosses ! |"
    puts "\s"*18 +"| WAY better than Tic-Tac-Toe ;)  |"
    puts "\s"*18 +"|#################################|"
    puts "\n"*2
    puts "|\sThe game is played on a grid that's 3 squares by 3 squares."
    puts "|" + "\s"*5 + "First player plays with X, second one plays with O."
    puts "|\s\sPlayers take turns putting their symbols in empty squares."
    puts "|" + "\s"*5 + "The first player to get 3 of her symbols in a row"
    puts "|" + "\s"*6 + "(up, down, across, or diagonally) is the winner."
    puts "|" + "\s"*8 + "When all 9 squares are full, the game is over."
    puts "\n"*3
  end

end
