def depth_first_search(graph)
  # write your code here
  visited = [0]
  stack = [0]
  while stack.length > 0 do
    options = graph[stack[-1]] - visited
    if options.length > 0
      stack << options[0]
      visited << options[0]
    else
      stack.pop
    end 
  end
  return visited
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]