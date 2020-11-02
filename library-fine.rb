def libraryFine(d1, m1, y1, d2, m2, y2)
  return 10000 if y1 - y2 > 0
  return 0 if y1 - y2 < 0 
  return (m1 - m2) * 500 if m1 - m2 > 0
  return 0 if m1 - m2 < 0
  return (d1 - d2) * 15 if (d1 - d2).positive?
  0|
end

p libraryFine(9,6,2015,6,6,2015)