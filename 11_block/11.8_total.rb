def total(from, to)
	result = 0
	from.upto(to) do |num|
		if block_given?
			result += yield(num)
		else
			result += num
		end
	end
	return result
end

p total(1, 10)
p total(1, 10){|num| num ** 2}

p total(3, 49)


# def total(from, to)
#   result = 0                # 合計の値
#   from.upto(to) do |num|    # fromからtoまで処理する
#     if block_given?         #   ブロックがあれば
#       result += yield(num)  #     ブロックで処理した値を足す
#     else                    #   ブロックがなければ
#       result += num         #     そのまま足す
#     end
#   end
#   return result             # メソッドの結果を返す
# end
 
# p total(1, 10)                 # 1から10の和 => 55
# p total(1, 10) {|num| num ** 2}