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
end

# Ejemplo de uso
texto = "este es un txt de ejemplo, solo falta ver que es lo que nos devuelve este txt"
texto2 = "carro2"
texto3 = "bicicleta1"

# Ejemplo de uso
contador = ContadorDePalabras.new(texto)
puts contador.contarPalabrasRepetidas

# Modificando el texto
contador.modificar_texto("Nuevo texto repetido. Nuevo texto repetido.")
puts contador.contarPalabrasRepetidas