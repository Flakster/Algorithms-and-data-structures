def staircase(n)
  return if n.zero?
  (1..n).each do |i|
    (1..n).each do |j|
      if j > n-i
        print '#'
      else 
        print ' '
      end
    end
    puts
  end
end

staircase(6)

staircase(0)

staircase(50)
