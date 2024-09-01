# Clase ContadorDePalabras
#Oscar Fabricio Regalado Perez
class ContadorDePalabras
    # `attr_accessor :texto` define un getter y un setter para la variable de instancia @texto.
    # Esto permite acceder y modificar el texto después de la inicialización del objeto.
    attr_accessor :texto
  
    # Método constructor `initialize`
   
    def initialize(texto)
      @texto = texto # Inicializa la variable de instancia @texto con el valor pasado al constructor.
    end
  
    # Método `contarPalabrasRepetidas`
    # Este método cuenta las palabras repetidas en el texto.
    # Devuelve un hash donde las claves son las palabras y los valores son el número de veces que se repiten.
    def contarPalabrasRepetidas
      # `palabras` es un array que contiene todas las palabras en el texto, dividido por espacios.
      palabras = @texto.split
  
      # `conteo_palabras` es un hash que almacenará la frecuencia de cada palabra.
      conteo_palabras = {}
  
      # Itera sobre cada palabra en el array `palabras`.
      palabras.each do |palabra|
        # `palabra_normalizada` convierte la palabra a minúsculas para evitar diferencias de mayúsculas/minúsculas.
        palabra_normalizada = palabra.downcase
  
        # Verifica si `palabra_normalizada` ya existe en `conteo_palabras`.
        if conteo_palabras.has_key?(palabra_normalizada)
          # Si la palabra ya existe en el hash, incrementa su contador en 1.
          conteo_palabras[palabra_normalizada] += 1
        else
          # Si la palabra no existe en el hash, la añade con un contador inicial de 1.
          conteo_palabras[palabra_normalizada] = 1
        end
      end
  
      # `palabras_repetidas` es un hash que almacenará solo las palabras que se repiten.
      palabras_repetidas = {}
  
      # Itera sobre cada par clave-valor en `conteo_palabras`.
      conteo_palabras.each do |palabra, conteo|
        # Si una palabra se repite más de una vez, la añade al hash `palabras_repetidas`.
        palabras_repetidas[palabra] = conteo if conteo > 1
      end
  
      # Devuelve el hash `palabras_repetidas`, que contiene las palabras repetidas y su número de apariciones.
      palabras_repetidas
    end
  end
  

  

  texto = "Este es un ejemplo de texto con palabras repetidas. Este texto es solo un ejemplo."
  
  contador = ContadorDePalabras.new(texto)
  
  puts contador.contarPalabrasRepetidas
  