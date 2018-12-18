class Lista 
	include Enumerable
	
	def initialize()
		@Node = Struct.new(:value, :next, :prev)
		@head = @tail = nil
	end

# Métodos para añadir elementos a la lista:

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

# Métodos para extaer elementos de la lista:
	
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


# Método para clasificar según la sal:
	def clasificar
		if @head.value.sal < 1
			return "Poca Sal"
		elsif @head.value.sal <= 4 
			return "Sal normal"
		else @head.value.sal > 4
			return "Mucha sal"
		end
	end

# Iterador para enumerable:
	def each 
		iterator = @head
		while !iterator.nil?
			yield iterator[:value]
				iterator = iterator[:next]
		end
	end

# Método para insertar varios elementos de forma simultanea en la lista:
	def insert(others)
		for i in (0.. others.size-1)
		push_tail(others[i])
		end
	end
	
# Método ordenar mediante un for
	def ordenar_for(factor)
		vector_ordenado = Array.new
				
		# Añadimos los elementos de la lista al vector para que se pueda reorganizar en el for
		while @head != nil
		vector_ordenado.push(@head.value)
                @head = @head.next
                end
		
		for i in 0..vector_ordenado.length-1
			for j in 0..(vector_ordenado.length - (2+i))
				@v1 = vector_ordenado[j].gasto_total(factor[j])
				@v2 = vector_ordenado[j+1].gasto_total(factor[j+1]) 
				if ( @v1 > @v2 )
					temp = vector_ordenado[j]
					vector_ordenado[j] = vector_ordenado[j+1]
					vector_ordenado[j+1] = temp							
					temp1 = factor[j]
					factor[j] = factor[j+1]
					factor[j+1] = temp1

				end
			end
		end

		return vector_ordenado
	end

# Método ordenar median each
	def ordenar_each(factor)
		vector_lista = Array.new
		vector_ordenado = Array.new
		vec = Array.new		

		# Añadimos los elementos de la lista a un vector, para poder usar zip con el array de factores
		while @head != nil
		vector_lista.push(@head.value)
		@head = @head.next 
		end
						
		vec = vector_lista.zip(factor)

		bloque_each = Proc.new  {
                                vec.each do |ind1, fa1|
                                    	vec.each do |ind2, fa2|
                                         	if ( ind1.gasto_total(fa1) > ind2.gasto_total(fa2) )
                                                        temp = ind1
                                                        ind1 = ind2
                                                        ind2 = temp
							temp1 = fa1
							fa1 = fa2
							fa2 = temp1
                                                end
   					end
                                        vector_ordenado.push(ind1)
                                        vec.delete([ind1,fa1])

                                end
                        if vec.length != 0
                        bloque_each.call(vec)
                        end
                 	}

		bloque_each.call(vec)

		return vector_ordenado	
	end

	def ordenar_sort(factor)
		
		vector_ordenado = Array.new
		vector_lista = Array.new

		# Pasamo el valor de la lista a un array	
		 while @head != nil
                	vector_lista.push(@head.value)
                	@head = @head.next
                	end

		# Usamos un zip para relacionar a cada individuo con su factor
		vector_ordenado = vector_lista.zip(factor).sort_by { |a, b| a.gasto_total(b) } # {|x,y| x.gasto_total(y)} <=> b.collect {|x,y| x.gasto_total(y)} }

		# Devolvemos el vector ordenado:
		vector_ordenado, factor = vector_ordenado.transpose

		return vector_ordenado
	end		

end
