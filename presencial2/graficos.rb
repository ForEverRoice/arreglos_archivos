def chart(datos,n)

	datos1 = datos.map { |x| x.to_i }

	datos1.each do |x|
		i = 0
		while i < x*2
			if i == 0
				print '|'
			end
			print '*'
			i += 1
		end
		puts
	end

end

n = 2

chart(ARGV,n)
