
def promedio(array)

  b = array.inject(0) do |sum, i|
    sum + i.to_i
    end
  return b / array.count
end

def compara_arrays (array1, array2)
  if promedio(array1) > promedio(array2)
    return promedio(array1)
    print promedio(array1)
  else
    return promedio(array2)
    print promedio(array2)
  end
end

visitas1 = [1000, 800, 250, 300, 500, 2500]
visitas2 = [10, 8, 2, 3, 5, 25]

compara_arrays(visitas1, visitas2)
puts compara_arrays(visitas1, visitas2)
