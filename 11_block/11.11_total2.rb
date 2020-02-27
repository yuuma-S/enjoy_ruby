def total2(from, to, &block)
	result = 0
	from.upto(to) do |num|
		if block
			result += block.call(num)
		else
			result += num
		end
	end
	return result
end

p total2(1,10)
p total2(1,10){|num| num **2 }

# 変数名の前に[&]をつけて受け取る引数をブロック引数という
