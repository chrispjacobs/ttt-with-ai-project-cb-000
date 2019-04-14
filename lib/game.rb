class Game
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]
  attr_accessor :player_1, :player_2
  def initialize(player_1 = nil, player_2 = nil, board = [])
    if player_1 == nil
      player_1 = Players::Human.new("X")
      @player_1 = player_1
    else
      @player_1 = player_1
    end
    if player_2 == nil
      player_2 = Players::Human.new("O")
      @player_2 = player_2
    else
      @player_2 = player_2
    end
    if @board == []
      @board = Board.new
    else
      @board = board
    end
  end
  def current_player
    if turn_count.odd?
      "X"
    else
      "O"
    end
  end
  def won?
    won = false
    WIN_COMBINATIONS.each do |index_1, index_2, index_3|
      if @board[index_1] == "X" && @board[index_2] == "X" && @board[index_3] == "X"
        won = true
      elsif @board[index_1] == "O" && @board[index_2] == "O" && @board[index_3] == "O"
        won = true
      end
    end
    won
  end
  def winner?
    winner = nil
    WIN_COMBINATIONS.each do |index_1, index_2, index_3|
      if @board[index_1] == "X" && @board[index_2] == "X" && @board[index_3] == "X"
        winner = "X"
      elsif @board[index_1] == "O" && @board[index_2] == "O" && @board[index_3] == "O"
        winner = "O"
      end
    end
    if winner == "X"
      "X"
    elsif winner == "O"
      "O"
    else
      nil
    end
  end
  def board
    @board.cells
  end
  def board=(board)
    @board = board
  end



end
