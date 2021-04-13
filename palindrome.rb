def is_palindrome(string)
  array = string.split('')
  inverse_array = []
  (array.length-1).downto (0) do |i|
    inverse_array << array[i]
  end
  return array == inverse_array
end

p is_palindrome('lateleletal')