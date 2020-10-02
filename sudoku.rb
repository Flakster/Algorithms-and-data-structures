def possible(r,c,n)
  (0..8).each do |e| 
    if $board[r][e] == n
      return false
    end
    if $board[e][c] == n
      return false
    end
  end
  sg_row = (r/3)*3
  sg_col = (c/3)*3
  (sg_row..sg_row+2).each do |r0|
    (sg_col..sg_col+2).each do |c0|
      if $board[r0][c0] == n
        return false
      end
    end
  end
  p "si"
  return true
end

def solve()
  (0..8).each do |r|
    (0..8).each do |c|
      if $board[r][c] == '.'
        (1..9).each do |n|
          p "chequeando si #{n} es posible en #{r},#{c}"
           if possible(r,c,n.to_s)
             $board[r][c] = n.to_s
             solve()
          #   #$board[r][c] = '.'
           end
        end
      end
      #return
    end    
  end
end

def display()
  $board.each do |arr|
    p arr
  end
end

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

solve()
display()