require './stack.rb'

def balanced_brackets?(string)
  # your code here
  brackets = Stack.new
  string.split('').each do |c| 
    case c
    when '{', '[', '('
      brackets.push(c)
    when ')'
      brackets.pop if brackets.top == '('
    when ']'
      brackets.pop if brackets.top == '['
    when '}'
      brackets.pop if brackets.top == '{'
    else
      
    end
  end
  brackets.head.value.nil?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true