def find_first_unique(string)
  arr = string.split('')
  hash = Hash.new()

  arr.each do|c| 
    hash[c].nil? ? hash[c] = 1 : hash[c] = 2
  end
  arr.each_with_index do |c,i|
    return i if hash[c] == 1
  end
  return -1
end

p find_first_unique("character")