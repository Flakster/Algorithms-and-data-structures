def graph_cycle?(graph)
  # write your code here
  queue = [0]
  visited = []
  while queue.length > 0 do
    if !graph[queue[0]].nil?
      queue += graph[queue[0]] - visited
    end
    return true if !queue.uniq!.nil?

    visited << queue.shift
  end
  return false
end

puts graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

p graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false