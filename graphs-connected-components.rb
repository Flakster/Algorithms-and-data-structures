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

def connected?(graph)
  arr1 = traverse(graph)
  arr2 = graph.keys
  arr1.length == arr2.length && arr1 - arr2 == []
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

p connected?(graph)