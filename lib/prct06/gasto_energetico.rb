class Gasto_Energetico 
# ¿PROGRAMACIÓN FUNCIONAL? ¿CÓMO?

	# Gasto energético basal
	def gasto_energetico (w,x,y,z)
		t=y*2
		if (w == 0)
		gasto_basal = ((10*x)+(6.25*t)-(5*z)-161).round(2)
		else 
		gasto_basal = ((10*x)+(6.25*t)-(5*z)+5).round(2)
		end
	end

	# Efecto termógeno
	def efecto_termogeno(x)
		efecto=x*0.10
	end

	# Gasto por actividad física
	def gasto_actividad(x,y)
		gasto_fisica=x*y
	end

	# Gasto energético total
	def gasto_total(x,y,z)
		gasto_total=x+y+z
	end
		
	# ¿CÓMO SE COMPARA?
	# MÉTODOS COLLECT, REDUCE Y ZIP ??

	def valor_menu(lista)
	# le paso un array,
	(lista.collect { |nodo| nodo.valor_energetico }).reduce(:+)
	
	#puts "La cantidad de la alimentación es suficiente para cubrir las exigencias del organismo"	
	end
	
end
