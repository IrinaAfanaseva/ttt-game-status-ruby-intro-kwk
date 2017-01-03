# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]

]

def won?(board)
  win_position = []
  WIN_COMBINATIONS.any? do |e|

      if e.all? { |i| board[i] =="X" } || e.all? { |i|  board[i] =="O"}
        win_position << e
       end
    end

  if  win_position.length == 0
    then false
    else
      win_position.flatten
  end
end


def full?(board)
  board.all? {|e| !(e.nil? || e == " ")}

end

def draw?(board)
  !(won?(board))&&full?(board)
end


def over?(board)
  won?(board)||full?(board)||draw?(board)
end

def winner(board)
 if won?(board)
   if board[won?(board)[0]] == "X"
     "X"
     else
       "O"
   end
 end
end
