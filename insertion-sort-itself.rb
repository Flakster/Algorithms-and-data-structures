def sort_itself(array)
  # write your code here
  array.each_with_index do |e,i|
    next if i < 1
    (i).downto(0).each do |u|
      if u > 0 && array[i] < array[u-1]
        array[u-1],array[i] = array[i],array[u-1]
        p array.join(' ')
      end
    end
  end
end

sort_itself([1, 4, 3, 6, 9, 2])