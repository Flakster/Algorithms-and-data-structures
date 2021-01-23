def simple_counting_sort(array)
  result = []
  (array.min..array.max).each do |e|
    num = array.count(e)
    num.times { result << e}
  end
  result
end