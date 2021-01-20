def counting_sort(array)
  count = []
  (0..99).each do |e|
    count << array.count(e)
  end
end