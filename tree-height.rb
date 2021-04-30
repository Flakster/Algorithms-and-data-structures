class Node
  attr_accessor :left, :right
  attr_reader :data

  def initialize(data)
    @data = data
  end
end

def array_to_tree(arr, index = 0)
  return nil if arr.length.zero? || index >= arr.length || arr[index].zero? 

  node = Node.new(arr[index])
  node.left = array_to_tree(arr, 2 * index + 1 )
  node.right = array_to_tree(arr, 2 * index + 2 )

  node
end

def tree_height(node, h = 0)
  return h if node.nil?

  h +=1
  return [tree_height(node.left,h), tree_height(node.right,h)].max
end


p tree_height(array_to_tree([1,2,3,4,5,6]))
