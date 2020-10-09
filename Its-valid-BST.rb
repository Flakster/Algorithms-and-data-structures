class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if array.length == 0 || index >= array.length || array[index] == 0

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)

  return node
end

def search_tree?(array)
	root = array_to_tree(array)
  # write your code here
  return traverse(root)
end

def traverse(node, min = nil, max = nil)
  return false if defined?(node.val).nil?
  return true if node.nil?
  return false if node.data.nil?
    
  return false if min && node.data < min

  return false if max && node.data > max

  traverse(node.left, min, node.data) && traverse(node.right, node.data, max)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false

puts search_tree?([20, 10, 27, 12, 14, 23, 30])
null = nil
puts search_tree?([1,null,1])