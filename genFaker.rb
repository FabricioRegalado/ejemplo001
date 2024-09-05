require 'faker'

singers = []

100.times do
  singer = {
    nombre: Faker::Music.band,           # Genera un nombre de cantante
    domicilio: Faker::Address.full_address,  # Genera una dirección completa
    correo: Faker::Internet.email          # Genera un correo electrónico
  }
  singers << singer
end

singers.each_with_index do |singer, index|
  puts "#{index + 1}. Nombre: #{singer[:nombre]}, Domicilio: #{singer[:domicilio]}, Correo: #{singer[:correo]}"
end

#poder guardar lo generado en un archivo 
File.open("listaGenerada.txt", "w") do |file|
    singers.each_with_index do |singer, index|
      file.puts "#{index + 1}. Nombre: #{singer[:nombre]}, Domicilio: #{singer[:domicilio]}, Correo: #{singer[:correo]}"
    end
  end
  