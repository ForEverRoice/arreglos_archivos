
def augment(array, fact)
  new_array = []
  array.each do |precio|
    new_array.push(precio.to_i * fact)
  end
  new_array
end

print augment(ARGV,1.4)
