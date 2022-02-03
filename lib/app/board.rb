class Board

  attr_accessor :board_case_array

  def initialize

    @board_case_array = []

    for i in (1..9)
      @board_case_array << BoardCase.new(i.to_s)
    end

    display_board

  end

  def display_board

    puts "\s"*24 + "\s"*4 + "1" + "\s"*3 + "2" + "\s"*3 + "3"
    puts "\s"*26 + "-"*13
    puts "\s"*24 + "A\s|" + "\s" + @board_case_array[0].value + "\s" + "|" + "\s" + @board_case_array[1].value + "\s" + "|" + "\s" + @board_case_array[2].value + "\s" + "|"
    puts "\s"*26 + "-"*13
    puts "\s"*24 + "B\s|" + "\s" + @board_case_array[3].value + "\s" + "|" + "\s" + @board_case_array[4].value + "\s" + "|" + "\s" + @board_case_array[5].value + "\s" + "|"
    puts "\s"*26 + "-"*13
    puts "\s"*24 + "C\s|" + "\s" + @board_case_array[6].value + "\s" + "|" + "\s" + @board_case_array[7].value + "\s" + "|" + "\s" + @board_case_array[8].value + "\s" + "|"
    puts "\s"*26 + "-"*13
    puts "\n\n"
  end

  def play(choice, result)
    @board_case_array[choice - 1].value = result
  end

  def square_filled?(choice)
    if @board_case_array[choice - 1].value == "X" || @board_case_array[choice - 1].value == "O"
      true
    else
      false
    end
  end

  def victory?
    win_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    victory = 0
    win_conditions.each do |x|
      if @board_case_array[x[0]].value == "X" && @board_case_array[x[1]].value == "X" && @board_case_array[x[2]].value == "X"
        victory = 1
      elsif @board_case_array[x[0]].value == "O" && @board_case_array[x[1]].value == "O" && @board_case_array[x[2]].value == "O"
        victory = 2
      end
    end
    return victory
  end
end
