
a = [1, 9 ,2, 10, 3, 7, 4, 6]

#map a float

a.map { |x| x.to_f }

#select menores que

a.select { |x| x > 5 }

#inject suma

a.inject {|sum, x| x + sum }

#count menores que

a.count {|x| x < 5 }
