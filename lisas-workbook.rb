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
  return result
end