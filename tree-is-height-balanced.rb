# In this challenge, a tree is height-balanced 
# if the maximum and minimum path from any node 
# to a terminal (null node) descendant differs by at most 1.


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

  return node
end

def tree_height(node, h = 0)
  return h if node.nil?

  h +=1
  return [tree_height(node.left,h), tree_height(node.right,h)].max
end

def is_balanced?(node)
  return true if node.nil?

  return false if tree_height(node.left) - tree_height(node.right) > 1

  is_balanced?(node.left) && is_balanced?(node.right)

end


p is_balanced?(array_to_tree([1, 2, 0, 3, 4, 0, 0]))
p is_balanced?(array_to_tree([1, 2, 3, 4, 5, 6, 7]))