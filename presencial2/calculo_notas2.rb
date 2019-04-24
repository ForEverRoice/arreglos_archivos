data = open('notas.data',converters: :numeric).readlines
		.reject{|x| x.empty? }

def nota_mas_alta(data)
	arry = data.chomp.split(',')

	arry1 = arry.reject {|x| x == arry[0]}

	arry2 = arry1.map { |x| x.to_i }

	return arry2.max

end

def arreglo_nota_mas_alta(arry)

	arry_notas = []
	arry.count.times do |x|
		arry_notas[x] = nota_mas_alta(arry[x])
	end

	return arry_notas

end

arreglo_nota_mas_alta(data)
