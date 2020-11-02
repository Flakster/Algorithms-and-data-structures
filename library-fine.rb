def libraryFine(d1, m1, y1, d2, m2, y2)
  return 10000 if (y2-y1).positive?
  return (m2 - m1) * 500 if (m2-m1).positive?
end