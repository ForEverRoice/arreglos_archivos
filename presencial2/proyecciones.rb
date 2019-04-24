def proyeccion_venta(nombre,aumento,inicial,final)

	data = open(nombre,converters: :numeric).readlines.reject{|x| x.empty? }

	data1 = data[0].split(',')

	data2 = data1.map do |x|
		x.to_f
	end

	i = 0
	semestre1 = 0
	x = aumento.to_f

	for i in (0..11)
		if i >= inicial-1 and i<= final-1
			semestre1 += data2[i]*x
		else
			semestre1 += data2[i]
		end
	end
	return semestre1.round(2)

end

semestre1 = proyeccion_venta("ventas_base.db",1.1,1,6)
semestre2 = proyeccion_venta("ventas_base.db",1.2,7,12)

resultado = [semestre1, semestre2]

File.write('resultados_ventas.data', resultado.join("\n"))
