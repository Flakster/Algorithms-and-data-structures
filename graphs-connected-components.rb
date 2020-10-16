def traverse(graph)
  queue = [0]
  visited = []
  while queue.length > 0 do
    queue += graph[queue[0]] - visited
    queue.uniq!
    visited << queue.shift
  end
  return visited
end


graph = {
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
}

#p graph.keys

 p traverse(graph)