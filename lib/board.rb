class Board
  def initialize
    self.reset!
  end
  def display
    puts " #{@spaces_array[0]} | #{@spaces_array[1]} | #{@spaces_array[2]} "
    puts "-----------"
    puts " #{@spaces_array[3]} | #{@spaces_array[4]} | #{@spaces_array[5]} "
    puts "-----------"
    puts " #{@spaces_array[6]} | #{@spaces_array[7]} | #{@spaces_array[8]} "
  end
  def reset!
    @spaces_array = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  def cells=(input)
    @spaces_array = input
  end
  def cells
    # method "stores the data of the state of the board in an array"
    @spaces_array
  end
  def position(number_input)
    adjusted_number = number_input.to_i - 1
    @spaces_array[adjusted_number]
  end
  def update(number_input, player)
    adjusted_number = number_input.to_i - 1
    @spaces_array[adjusted_number] = player.token
    # Need to make sure that Player method 'token' returns a string or is augmented by .to_s
  end
  def full?
    answer = true
    @spaces_array.each do |space|
      if space == " "
        answer = false
      end
    end
    answer
  end
  def turn_count
    count = 0
    @spaces_array.each do |space|
      if space == "X" || space == "O"
        count += 1
      end
    end
    count
  end
  def taken?(number_input)
    adjusted_number = number_input.to_i - 1
    if @spaces_array[adjusted_number] == "X" || @spaces_array[adjusted_number] == "O"
      true
    else
      false
    end
  end
  def valid_move?(number_input)
    if number_input.to_i > 0 && number_input.to_i < 10
      adjusted_number = number_input.to_i - 1
      if @spaces_array[adjusted_number] != " "
        false
      else
        true
      end
    else
      false
    end
  end

end
