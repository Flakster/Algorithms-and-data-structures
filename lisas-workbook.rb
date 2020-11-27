def workbook(n, k, arr)
  result = 0 
  page = 1
  arr.each do |problems|
    number = 1 # number of problem in the page
    problem = 1
    while problem <= problems
      result += 1 if problem == page
      problem +=1
      number +=1
      if number > k
        page += 1
        number = 1
      end
    end
  end
  result
end

p workbook(5, 3,  [4, 2, 6, 1, 10])    
#=> 4

p workbook(10, 5, [3, 8, 15, 11, 14, 1, 9, 2, 24, 31])
#=> 8