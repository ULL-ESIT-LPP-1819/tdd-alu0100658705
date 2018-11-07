class Nutricional
	attr_reader :nombre, :grasa, :grasa_saturada, :hidratos, :azucares, :proteinas, :sal 

	def initialize(nombre,grasa,grasa_saturada,hidratos,azucares,proteinas,sal)
		@nombre, @grasa, @grasa_saturada, @hidratos, @azucares, @proteinas, @sal  = nombre, grasa, grasa_saturada, hidratos, azucares, proteinas, sal
	end

	def Nombre
		@nombre
	end
	
	def Grasa
		@grasa
	end
	
	def Grasa_saturada
		@grasa_saturada
	end

	def Hidratos
		@hidratos
	end

	def Azucares
		@azucares
	end
	
	def Proteinas
		@proteinas
	end

	def Sal
		@sal
	end

	def Valor_energetico
	(@grasa*36)+(@hidratos*17)+(@proteinas*17)+(@sal*25)
	end

	
	def Formatear(a,b)
		if ( a == grasa)
			porc=((a*100*37)/b).round(2)
			calorias=37*a
		end
		
	       	if ( a == hidratos)
			porc=((a*100*17)/b).round(2)
			calorias=17*a
		end

		if ( a == proteinas)
			porc=((a*100*17)/b).round(2)
			calorias=17*a
		end
		
		if (a == sal)
			porc=((a*100*25)/b).round(2)
			calorias=25*a
		end

		return porc, calorias
	end


	producto = Nutricional.new("Bollicao",80,20,100,50,12,3);
	
	producto.Formatear(producto.grasa,producto.Valor_energetico)

 
	puts "----------------------------------------------"
	if  producto.grasa > 70
	puts "Ha superado el valor de Ingesta de Referencia para las grasas" 
	end

	if producto.hidratos > 260
        puts "Ha superado el valor de Ingesta de Referencia para los hidratos"
        end

	if  producto.azucares > 90 
        puts "Ha superado el valor de Ingesta de Referencia para los azucares"
        end
	
	if  producto.proteinas > 50
        puts "Ha superado el valor de Ingesta de Referencia para las proteinas"
        end
	
	if  producto.sal > 6
        puts "Ha superado el valor de Ingesta de Referencia para la sal"
        end

	if producto.Valor_energetico > 8400
	puts "Ha superado el valor de Ingesta de Referencia para el valor energético"
	end

		
	
end


