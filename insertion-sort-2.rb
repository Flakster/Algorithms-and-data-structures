def insertionSort2(n, arr)
  (1..n-1).each do |e|
    num = arr[e]
    i = e - 1
    while i >= 0
      if num < arr[i]
        arr[i + 1] = arr[i]
        arr[i] = num if i.zero?
      else
        arr[i+1] = num
        break
      end
      i -= 1
    end
    print arr.join(' ')
  end
end