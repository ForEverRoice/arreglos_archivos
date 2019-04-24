
pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

def clear_steps(steps)
  filtrado_letras = steps.reject do |x|
    /[aA-zZ]/.match(x)
  end

  convertido = filtrado_letras.map do |x|
    x.to_i
  end

  filtrado_pasos = convertido.select do |x|
    x >= 200 and x <= 10000
  end
  return filtrado_pasos
end

clear_steps(pasos)
