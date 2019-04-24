
def to_minutes(segundos)
  n = segundos.count
  results = []
  n.times do |i|
    results.push segundos[i]/60.to_f
  end
  results
end

seconds = [100, 50, 1000, 5000, 1000, 500]

to_minutes(seconds)
puts to_minutes(seconds)
