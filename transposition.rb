def transpose(string)
  output = ''
  n = 0
  g = 0
  string.split('').each_with_index do |c,i|
    if ['g','n'].include?(c)
      g += 1 if c == 'g' 
      n += 1 if c == 'n'
    else
      n.times { output << 'n' }
      g.times { output << 'g' }
      output << c
      n = 0
      g = 0
    end
  end
  n.times { output << 'n' }
  g.times { output << 'g' }
  output
end

#transpose('he was searchign on Bign for signign kigns')
#transpose('rignadingdiggn!')
#transpose('gngngnnggnngggnnn')

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg