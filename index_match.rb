def index_match(array)
  min = 0
  max = array.length - 1
  pivot = max / 2
  while min < max do
    p " min: #{min} max: #{max} pivot: #{pivot}"
    if array[pivot] > pivot
      max = pivot
    elsif array[pivot] < pivot
      min = pivot
    else
      return pivot 
    end
    pivot = (min + max) / 2
    gets
  end
  return -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0