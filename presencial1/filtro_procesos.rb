
filtro = ARGV[0].to_i

data = open('procesos.data',converters: :numeric).readlines
  .reject{ |x| x.empty? }

lines = data.length

data1 = data.map do |x|
  x.to_i
end

puts data1

data2 = data1.select do |x|
  x > filtro
end

File.write('procesos_filtrados.data', data2.join("\n"))
