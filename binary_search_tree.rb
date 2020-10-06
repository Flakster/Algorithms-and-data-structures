class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(node)
    #your code here
    if @root.nil?
      @root = node
    else
      current = @root
      until current.nil?
        if node.data <= current.data
          if current.left.nil?
            current.left = node
            return
          end
          current = current.left
        else
          if current.right.nil?
            current.right = node
            return
          end
          current = current.right
        end
      end
    end
  end

  def pre_order(node = @root)
    #implementation from the previous challenge
    return '' if node == nil

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"