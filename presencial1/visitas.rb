

def promedio(array)

  b = array.inject(0) do |sum, i|
    sum + i.to_i
    end

  return b / array.count
end

puts promedio(ARGV)
