# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  node1 = l1
  node2 = l2
  carry = false
  first_value = node1.val + node2.val
  if first_value > 9
    first_value -= 10
    carry = true
  end
  result = ListNode.new(first_value)
  current = result
  node1 = node1.next
  node2 = node2.next
  while !!node1 || !!node2 || carry
    sum = 0
    sum += 1 if carry
    carry = false
    unless node1.nil?
      sum += node1.val
      node1 = node1.next
    end
    unless node2.nil?
      sum += node2.val
      node2 = node2.next
    end
    if sum > 9
      sum -= 10
      carry = true
    end
    last = ListNode.new(sum)
    current.next = last
    current = last
  end
  result
end

l1 = ListNode.new(2)
current = l1
last = ListNode.new(4)
current.next = last
current = last
last = ListNode.new(3)
current.next = last

l2 = ListNode.new(5)
current = l2
last = ListNode.new(6)
current.next = last
current = last
last = ListNode.new(4)
current.next = last

p add_two_numbers(l1, l2)