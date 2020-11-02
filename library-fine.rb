def libraryFine(d1, m1, y1, d2, m2, y2)
  return 10000 if (y1-y2).positive?
  return (m1 - m2) * 500 if (m1 - m2).positive?
  return (d1 - d2) * 15 if (d1 - d2).positive?
  0
end