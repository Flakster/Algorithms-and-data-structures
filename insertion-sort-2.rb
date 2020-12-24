def insertionSort2(n, arr)
  (1..n-1).each do |e|
    num = arr[e]
    index = e - 1
    while index >= 0
      if arr[index] < num
        arr[index-1] = num
        break 
      else
        arr[index+1] = arr[index]
      end
      index -= 1
    end
    p arr
  end
end

insertionSort2(4, [3,4,1,2])