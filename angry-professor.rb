def angryProfessor(k, a)
  k <= a.count { |e| e < 1 } ? 'NO' : 'YES'
end

p angryProfessor( 3, [-1, -3, 4, 2])
#=> YES

p angryProfessor(2, [0, -1, 2, 1])
#=> NO