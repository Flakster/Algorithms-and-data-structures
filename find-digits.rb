def find_digits(num)
  num.to_s.split('').map(&:to_i).count{|e| !e.zero? && (num % e).zero?}
end

p find_digits(12)
#=> 2

p find_digits(1012)
#=> 3