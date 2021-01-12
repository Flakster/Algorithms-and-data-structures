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