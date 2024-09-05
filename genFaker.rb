require 'faker'

singers = []

100.times do
  singer = {
    name: Faker::Music.band,           # Genera un nombre de cantante
    address: Faker::Address.full_address,  # Genera una dirección completa
    email: Faker::Internet.email          # Genera un correo electrónico
  }
  singers << singer
end

singers.each_with_index do |singer, index|
  puts "#{index + 1}. Nombre: #{singer[:name]}, Domicilio: #{singer[:address]}, Correo: #{singer[:email]}"
end

#poder guardar lo generado en un archivo 
File.open("listaGeneradaÑ.txt", "w") do |file|
    singers.each_with_index do |singer, index|
      file.puts "#{index + 1}. Nombre: #{singer[:name]}, Domicilio: #{singer[:address]}, Correo: #{singer[:email]}"
    end
  end
  