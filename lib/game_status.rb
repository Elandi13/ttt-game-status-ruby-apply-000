# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS.each {|win_combo|
index_0 = win_combo[0]
index_1 = win_combo[1]
index_2 = win_combo[2]

postion