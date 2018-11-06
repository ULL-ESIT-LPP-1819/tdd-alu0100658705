class Nutricional
	attr_reader :nombre, :grasa, :grasa_saturada, :hidratos, :azucares, :proteinas, :sal #:valor_energetico 

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
	(@grasa*37)+(@hidratos*17)+(@proteinas*17)+(@sal*25)
	end

	producto = Nutricional.new("Bollicao",80,20,100,50,12,3);
	
 
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


