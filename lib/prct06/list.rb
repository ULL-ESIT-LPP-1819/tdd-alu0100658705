#require_relative 'nutricional'

Node = Struct.new(:value, :next, :prev)

#Nutricional.new

class Persona

	attr_reader :edad, :sexo, :nombre

	def initialize(edad,sexo,nombre)
		@edad, @sexo, @nombre = edad,sexo,nombre
	end
end



class Lista

	attr_accessor :cabeza

	def empujar(nodo)
		if @cabeza == nil
			@cabeza = nodo
		else
			nodo.next=@cabeza
			@cabeza = nodo
		end
	end

	def mostrar()
	puts cabeza.value.edad
	@cabeza=@cabeza.next
	puts cabeza.value.edad
	end

	def ordenar()
	end

end


p1=Persona.new(20,0,"Pablo")
p2=Persona.new(15,1,"Elena")
p3=Persona.new(18,0,"Pepe")

n1=Node.new(p1,nil)
n2=Node.new(p2,nil)
n3=Node.new(p3,nil)

lista=Lista.new()
lista.empujar(n1)
lista.empujar(n2)
lista.empujar(n3)

lista.mostrar()

