def insertion_sort(array)
  # write your code here
  element = array[-1]
  index = array.length - 2
  while index >= 0 do
    if array[index] > element
      array[index + 1] = array[index]
      index -= 1
    else
      array[index + 1] = element
      index = -1
    end
    p array.join(' ')
  end
end

insertion_sort([1, 4, 6, 9, 3])