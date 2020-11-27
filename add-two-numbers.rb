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
  
end