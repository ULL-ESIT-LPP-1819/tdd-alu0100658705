require_relative 'nutricional'

Node = Struct.new(:value, :next, :prev)

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
		cabeza.value.sal
	end
	

	def ordenar()
	end

end


p1=Nutricional.new("tirma",20,15,6,7,8,9)
p2=Nutricional.new("Elena",10,5,12,6,4,2)

n1=Node.new(p1,nil)
n2=Node.new(p2,nil)


lista=Lista.new()
lista.empujar(n1)
lista.empujar(n2)

puts lista.cabeza.value.sal


