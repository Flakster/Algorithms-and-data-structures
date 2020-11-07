def find_digits(n)
  n.to_s.split('').map(&:to_i).count{|e| !e.zero? && (n % e).zero?}
end

p find_digits(12)
#=> 2

p find_digits(1012)
#=> 3