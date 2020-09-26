# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS.each {|win_combo|
index_0 = win_combo[0]
index_1 = win_combo[1]
index_2 = win_combo[2]

position_1 = board[index_0]
position_2 = board[index_1]
position_3 = board[index_2]

if position_1 == "X" && position_2 == "X" && position_3 == "X"
  return win_combo
end
}
return false
end
def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner (board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end