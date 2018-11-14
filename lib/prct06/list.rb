class Lista
	
	def initialize()
		@Node = Struct.new(:value, :next, :prev)
		@head = @tail = nil
	end

# Añadir

	def push_head(value)
		if @head == nil
			@head = @Node.new(value, nil, nil)
			@tail = @head
		else
			@head.prev=@Node.new(value, @head, nil)
			@head = @head.prev
		end
	end
	
	
	def push_tail(value)
		if @head == nil
			@head = @Node.new(value, nil, nil)
		   	@tail = @head
		else
			@tail.next = @Node.new(value, nil, @tail)
			@tail = @tail.next
		end
	end	

# Tomar valor: Para valores individuales dentro de la clase Nutricional se llama --> ejemplo: @list1.get.value.sal	

	def get_value
		return @head.value
	end

# Extaer:
	
	def pop_head()
		if @head == @tail
			@head, @tail = nil
		else
			@head = @head.next
			@head.prev = nil
		end
		@head.value
	
	end
	
	def pop_tail()
		if @head == @tail
			@head, @tail = nil
		else
			@tail=@tail.prev
			@tail.next = nil
		end
	end		


# Tomar el siguiente o el anterior

	def get_next
		return @head.next
	end

	def get_prev
		return @head.prev
	end

	def clasificar
		if @head.value.sal < 1
			return "Poca Sal"
		elsif @head.value.sal <= 4 
			return "Sal normal"
		else @head.value.sal > 4
			return "Mucha sal"
		end
	end



end



