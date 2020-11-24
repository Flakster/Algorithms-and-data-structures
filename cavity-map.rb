def cavityMap(grid)
  result = []
  grid.each_with_index do | str, row |
    arr = str.split('') 
    arr.each_with_index do |chr, col|
      if row.zero? || col.zero? || row == grid.length-1 or col ==grid.length-1
        next
      else
        up = grid[row-1].slice(col,1)
        lo = grid[row+1].slice(col,1)
        pr = arr[col-1]
        nx = arr[col+1]
        if up == 'X' || lo == 'X' || pr == 'X' || nx =='X'
          next
        end
        if chr.to_i > up.to_i && chr.to_i > lo.to_i && chr.to_i > pr.to_i && chr.to_i > nx.to_i
          arr[col] = 'X'
        end 
      end 
    end
    result << arr.join('')
  end
  return result
end

