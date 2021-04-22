def find_pairs(array, k)
  result = []
  map = {}
  array.each_with_index do |e,i|
    map[e].nil? ? map[e] = [i] : map[e] << i
    if !map[k-e].nil?
      result << [k-e, e]
    end
  end
  result
end

#p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]

p find_pairs([17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51], 40)
