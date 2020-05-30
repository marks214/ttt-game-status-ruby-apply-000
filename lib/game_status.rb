# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)

  i = 0
  j = 0
  array = []
  winner = []
  WIN_COMBINATIONS.each do |look|
        #win_index = win_combination[i]
        #puts win_index
        check = WIN_COMBINATIONS[i]
       # puts check
        position_1 = board[WIN_COMBINATIONS[i][0]]
        position_2 = board[WIN_COMBINATIONS[i][1]]
        position_3 = board[WIN_COMBINATIONS[i][2]]
        array << [position_1, position_2, position_3]
        #puts position_1, position_2, position_3
        #puts "this: #{array}"

        i += 1

  end


  while j < WIN_COMBINATIONS.length do
    if  array[j][0] == "X" && array[j][1] == "X" && array[j][2] == "X"
        winner = [WIN_COMBINATIONS[j][0], WIN_COMBINATIONS[j][1], WIN_COMBINATIONS[j][2]]
        return winner
    elsif array[j][0] == "O" && array[j][1] == "O" && array[j][2] == "O"
        winner = [WIN_COMBINATIONS[j][0], WIN_COMBINATIONS[j][1], WIN_COMBINATIONS[j][2]]
        return winner
    end
    j += 1
  end

  return false

end

def full?(board)
  i = 0
  while i < board.length do
    if board[i] == "X" || board[i] == "O"
      i += 1
    else
      return false
      break
    end

    if i == 8
      return true
    end
  end
end


def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end
