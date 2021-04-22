def getCandidates(board, row, col)
  candidates = []
  ('1'..'9').each do |chr|
    collision = false
    (0..8).each do |i|
      #p "testing board[#{row}][#{i}], board[#{i}][#{col}], and board[#{row - row%3 + i/3 }][#{col - col%3 + i%3}] with #{chr}"
      if board[row][i] == chr || board[i][col] == chr || board[row - row%3 + i/3 ][col - col%3 + i%3] == chr
        collision = true
        break
      end
    end
    candidates << chr unless collision
  end
  return candidates
end

def sudokuSolve(board)
  row = -1
  col = -1
  candidates = nil

  (0..8).each do |r|
    (0..8).each do |c|
      if board[r][c] == '.'
        newCandidates = getCandidates(board, r, c)
        if candidates.nil? || newCandidates.length < candidates.length
          candidates = newCandidates 
          row = r
          col = c
        end
      end
    end
  end

  return true if candidates.nil?

  candidates.each do |val|
    board[row][col] = val
    if sudokuSolve(board)
      puts
      display(board)
      return true
    else
      board[row][col] = '.'
    end
  end

end

def display(board)
  board.each {|row| p row}
end

# $board = Array.new(9) {Array.new(9){ '.' }}
$board = [
  ['.','.','.','.','4','.','.','.','.'],
  ['.','1','4','.','.','.','.','.','6'],
  ['.','.','2','9','.','3','.','.','.'],
  ['2','.','.','.','7','.','.','9','.'],
  ['.','9','.','.','.','.','5','.','.'],
  ['6','.','5','.','.','1','.','.','3'],
  ['5','.','.','.','.','.','7','2','.'],
  ['.','.','6','.','.','.','.','.','1'],
  ['.','.','.','.','.','7','.','3','.'],
]

sudokuSolve($board)