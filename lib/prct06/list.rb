require_relative 'nutricional'

Node = Struct.new(:value, :next, :prev)

class Lista

	attr_accessor :head

	def push(nodo)
		if @head == nil
			@head = nodo
		else
			nodo.next=@head
			@head = nodo
		end
	end

	def pop()
		head1=@head
		@head=@head.next
		head1.value
	end
	

	def ordenar()
	 
	end

end



