def tree_height(tree_array)
  # your code here
    heights_stack = []
    (tree_array.length - 1).downto(0) do |i|
      initial_height = tree_array[i] == 0 ? 0 : 1
      left_child_index = tree_array[2*i + 1].nil? ? nil : heights_stack.length - i - 1
      left_child_height = left_child_index.nil? ? 0 : heights_stack[left_child_index] 
      right_child_index = tree_array[2*i + 2].nil? ? nil : left_child_index - 1
      right_child_height = right_child_index.nil? ? 0 : heights_stack[right_child_index]
      total_height = initial_height + [left_child_height,right_child_height].max
      heights_stack.push(total_height)
      
   end
   puts heights_stack.max
end



puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

# => 4