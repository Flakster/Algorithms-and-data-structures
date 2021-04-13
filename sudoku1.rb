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
  end
end

def sudokuSolve(board)
  row = -1
  col = -1

  (0..8).each do |r|
    (0..8).each do |c|
      if board[r][c] == '.'
        newCandidates = getCandidates(board, r, c)
        if candidates.nil? || newCandidates.size < candidates.size
          candidates = newCandidates 
          row = r
          col = c
        end
      end
    end
  end

  return true if candidates.nil?

  candidates.each do |val|
    board[r][c] = val
    if sudokuSolve[board]
      return true
    else
      board[r][c] = '.'
    end
  end

end

def display(board)
  board.each {|row| p row}
end

# $board = Array.new(9) {Array.new(9){ '.' }}
$board = [
  ['8','.','.','6','.','.','.','4','2'],
  ['.','.','9','.','5','8','.','.','.'],
  ['6','.','.','.','2','.','.','8','.'],
  ['.','8','.','.','.','9','5','7','.'],
  ['4','3','.','5','.','.','.','.','.'],
  ['.','5','.','7','.','6','.','.','4'],
  ['.','.','8','.','1','.','3','.','6'],
  ['.','.','4','.','6','2','.','.','.'],
  ['7','.','1','3','.','.','4','.','.'],
]

#sudokuSolve($board)
getCandidates($board,1,2)