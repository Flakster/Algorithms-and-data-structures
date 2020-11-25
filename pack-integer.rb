def array_packing(integers)
  output = ''
  integers.reverse.each do |e|
    str = '0' * (8-e.to_s(2).length) + e.to_s(2)
    output += str
  end
  p output
  return output.to_i(2)
end
