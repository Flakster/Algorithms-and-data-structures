def insertion_sort(array)
  # write your code here
  element = array[-1]
  index = array.length - 2
  while index >= 0 do
    if array[index] > element
      array[index + 1] = array[index]
      if index.zero?
        puts array.join(' ')
        array[index] = element
      end
    else
      array[index + 1] = element
    end
    index -= 1
    puts array.join(' ')
  end
end

insertion_sort([2, 3, 4, 5, 6, 7, 8, 9, 10, 1])