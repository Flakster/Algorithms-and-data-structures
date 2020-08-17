$height = 0;

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length #|| array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def pre_order(node,level)
  
  
  if node == nil
    return ''
  end
  
  level += 1
  $height = level if level > $height
   
  result = "#{node.data} "
  result += pre_order(node.left, level)
  result += pre_order(node.right, level)
end

def binary_tree_height(array_tree)
  # write your code here
  pre_order(array_to_tree(array_tree,0),0)
  $height
end

puts binary_tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

# => 4