def getStrength(password, weight_a)
  hash = {"a" =>0, "b" =>1,"c" =>2,"d" =>3,"e" =>4,"f" =>5,"g" =>6,"h" =>7,"i" =>8,"j" =>9,"k" =>10,"l" =>11,"m" =>12,"n" =>13,"o" =>14,"p" =>15,"q" =>16,"r" =>17,"s" =>18,"t" =>19,"u" =>20,"v" =>21,"w" =>22,"x" =>23,"y" =>24,"z" =>25}
  hash2= hash.each_with_object({}) do |(k,v), a|
    v2 = v + weight_a
    v2 -= 26 if v2 > 25
    a[k] = v2
  end

  password.split('').reduce(0) {|letter,acum| hash2[letter]+acum}
end

p getStrength("hellomrz",2)