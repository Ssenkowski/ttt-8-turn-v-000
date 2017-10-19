def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
display_board(board)

def move(board, input, token = "X")
board[input] = token
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == " " && board[index] == "" && index <= 8 && index >= 0 && position_taken?(board, index) == true
  else false
  end
end

def position_taken?(board, index)
  board[0] == " " && board[0] == "" && board[8] == "X" || board[8] == "O"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?([" "," "," "," "," "," "," "," "," "], 0) == true
    move(board, input, token)
    display_board(board)
  else valid_move?([" "," "," "," "," "," "," "," "," "], 0) == false
    puts "Please enter 1-9:"
    until valid_move?([" "," "," "," "," "," "," "," "," "], 0) == true
    end
  end
end
