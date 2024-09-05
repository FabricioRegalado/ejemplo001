class ContadorDePalabras
  attr_accessor :texto

  def initialize(texto)
    @texto = texto
  end

  # Método para modificar la variable de instancia @texto
  def modificar_texto(nuevo_texto)
    @texto = nuevo_texto
  end

  def contarPalabrasRepetidas
    palabras = @texto.split
    conteo_palabras = {}

    palabras.each do |palabra|
      palabra_normalizada = palabra.downcase
      if conteo_palabras.has_key?(palabra_normalizada)
        conteo_palabras[palabra_normalizada] += 1
      else
        conteo_palabras[palabra_normalizada] = 1
      end
    end

    palabras_repetidas = {}
    conteo_palabras.each do |palabra, conteo|
      palabras_repetidas[palabra] = conteo if conteo > 1
    end

    palabras_repetidas
  end

  def to_s
    "Objeto ContadorDePalabras inicializado con el texto: '#{@texto}'"
  end

end


texto = "este es un txt de ejemplo, solo falta ver que es lo que nos devuelve este txt"
texto2 = "carro2"
texto3 = "bicicleta1"


contador1 = ContadorDePalabras.new(texto)
puts contador1.contarPalabrasRepetidas

texto2 = "Nuevo texto palabras repetidas. Nuevo texto palabras repetidas."
contador2 = ContadorDePalabras.new(texto2)

puts contador1.to_s
puts contador2.to_s