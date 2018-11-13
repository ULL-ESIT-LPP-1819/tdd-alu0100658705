#require_relative 'nutricional'

Nodo = Struct.new(:value, :next, :prev)

#Nutricional.new

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
end
