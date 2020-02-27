File.open("sample.txt") do |file|
	file.each_line do |line|
		print line
	end
end
# fileオブジェクトをプロック変数として一度だけ実行している。
# closeメソッドを省略できる。