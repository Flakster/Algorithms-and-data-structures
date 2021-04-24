def cards_needed(n)
	n.negative? ? 'invalid' : 3 * n * (n+1) / 2 - n
end

p cards_needed(4)
