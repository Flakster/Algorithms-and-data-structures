def insertion_sort(array)
  # write your code here
  element = array[-1]
  index = array.length - 2
  while index >= 0 && element < array[index] do
    array[index + 1] = array[index]
    index -= 1
    p array
  end
  array[index + 1] = element
  p array
end
