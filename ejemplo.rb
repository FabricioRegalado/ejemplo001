class Padre
    def say_hello
        saludo = "Hola desde #{self}"
        return saludo
    end
end

class Hijo < Padre
end


saluda1 = Padre.new
puts saluda1.say_hello

saluda2 = Hijo.new
puts saluda2.say_hello