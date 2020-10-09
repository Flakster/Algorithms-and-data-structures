# Given an integer n print the first n numbers in the fibonacci sequence 

# 1 1 2 3 5 8...


def print_fibonacci(n)
  return 1 if n <= 2

  print_fibonacci( n-1 ) + print_fibonacci( n-2 )
end

def call_fibonacci(n)
  (1..n).each do |e|
    p print_fibonacci(e)
  end
end

def fibonacci2(n)
  previous = 0
  current = 0
  (1..n).each do |e|
    if e <= 2
      previous = 1
      current  = 1
    else
      # temp = current
      # current = previous + current
      # previous = temp
      previous, current = current, previous + current
    end
    p current
  end
end

# 1 1 2 3 5 8 13 21

def fibonacci3(n)
  previous = 0
  current = 0
  (1..n).each do |e|
    if e <= 2
      previous = 1
      current = 1
    else
      temp = current
      current = previous + current
      previous = temp
    end
      p current
  end
end

#fibonacci3(7)

fibonacci3(8)