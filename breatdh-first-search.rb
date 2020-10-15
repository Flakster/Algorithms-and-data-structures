def bfs(graph)
  # write your code here
  queue = [0]
  visited = []
  while queue.length > 0 do
    queue += graph[queue[0]] - visited
    queue.uniq!
    visited << queue.shift
  end
  return visited
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
#=> [0, 2, 5, 3, 4, 1]

p bfs({
  0=>[1, 2],
  1=>[0, 2],
  2=>[0, 1, 3, 4, 5],
  3=>[2, 4],
  4=>[3, 2],
  5=>[2]
})