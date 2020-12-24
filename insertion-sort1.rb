def insertion_sort(array)
  # write your code here
  element = array[-1]
  index = array.length - 2
  while index >= 0 do
    if array[index] > element
      array[index + 1] = array[index]
      if index.zero?
        array[index] = element
      end
    else
      array[index + 1] = element
      break
    end
    index -= 1
    puts array.join(' ')
  end
  puts array.join(' ')
end

insertion_sort([1, 2])