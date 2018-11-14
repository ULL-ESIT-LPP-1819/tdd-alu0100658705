require_relative 'nutricional'


class Lista

	attr_accessor :node
	
	def initialize()
		@Node = Struct.new(:value, :next, :prev)
		@head = @tail = nil
	end

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

	
	def get_value
		return @head.value
	end


	
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

	def get_next
		return @head.next
	end

	def get_prev
		return @head.prev
	end

	def clasificar
		if @head.value.sal < 1
			return "Poca Sal"
		if @head.value.sal <= 4 
			return "Sal normal"
		if @head.value.sal > 4
			return "Mucha sal"
	end



end



