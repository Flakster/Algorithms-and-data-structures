def insertionSort2(n, arr)
  (1..n-1).each do |e|
    num = arr[e]
    index = e - 1
    while index >= 0
      if arr[index] > arr[e]
        arr[index] = num 
      else
        arr[index] = arr[index+1]
        break
      end
      index -= 1
      p arr
    end
  end
end

insertionSort2(4, [3,4,1,2])