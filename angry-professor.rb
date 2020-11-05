def angryProfessor(k, a)
  k <= a.count { |e| e < 1 } ? 'NO' : 'YES'
end