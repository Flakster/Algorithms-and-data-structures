def graph(hash_graph)
  # write your code here
  visited = [0]
  stack = [0]
  while stack.length > 0 do
    current = stack.last
    return visited if current == 4
      
    next_node = get_next(hash_graph[current], visited)
    if next_node.negative?
      stack.pop
    else
      visited << next_node
      stack << next_node
    end
  end
  return 'Not found'
end

def get_next(adjacent, visited)
  adjacent.each do |e|
    if visited.include?(e)
      next
    else
      return e
    end
  end
  return -1
end


hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]

# => [0, 2, 5, 4]