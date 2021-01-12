require 'set'

$primes = Set.new(2..10000)
(2..100).each do |i|
  (i..(10000/i)).each do |j|
    $primes.delete(i*j)
  end
end

def number_of_primes(arr)
  arr.count{|e| $primes.include?(e)}
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3