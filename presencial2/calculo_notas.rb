
data = open('notas.data',converters: :numeric).readlines
		.reject{|x| x.empty? }

def nota_mas_alta(data)
	arry = data.chomp.split(',')

	arry1 = arry.reject {|x| x == arry[0]}

	arry2 = arry1.map { |x| x.to_i }

	return arry2.max

end

nota_mas_alta(data[0])
