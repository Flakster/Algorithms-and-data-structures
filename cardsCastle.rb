# def cards_needed(n)
# 	return 'invalid' if n < 0
	
# 	cards = 0
# 	(1..n).each do |level|
# 		if level =	= 1
# 			cards += n * 2
# 		else
# 			cards += (level-1) * 3
# 		end
# 	end
# 	return cards
# end

def cards_needed(n)
	n.negative? ? 'invalid' : 3 * n * (n+1) / 2 - n
end

p cards_needed(4)
