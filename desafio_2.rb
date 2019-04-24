

nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pia', 'Ray', 'Camilo']

#nombres con mas de 5 caracteres

nombres.select { |x| x.length > 5 }

#convirtiendo los nombres en minuscula

nombres.map { |x| x.downcase }

#nombres que empiezan con P

nombres.select { |x| x if x[0] == 'P' }

#contando los elementos con ABC

nombres.count { |x| x[0] == 'A' or x[0] == 'B' or x[0] == 'C'}

#contando la cantidad de letras de cada nombre

nombres.map {|x| x.length }
