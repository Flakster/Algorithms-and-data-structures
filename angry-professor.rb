def angryProfessor(k, a)
  k <= a.count { |e| e < 1 } ? 'NO' : 'YES'
end

p angryProfessor( 3, [-1, -3, 4, 2])
#=> YES