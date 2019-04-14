module Players
  include Player
  class Human < Player
    def move(board)
      # Code for #board goes here
    end
  end
end

class Player
  def initialize(token)
    @token = token
  end
end
