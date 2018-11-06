class Nutricional
	attr_reader :nombre, :grasa, :grasa_saturada, :hidratos, :azucares, :proteinas, :sal, :valor_energético 

	def initialize(nombre,grasa,grasa_saturada,hidratos,azucares,proteinas,sal,valor_energetico)
		@nombre, @grasa, @grasa_saturada, @hidratos, @azucares, @proteinas, @sal, @valor_energetico  = nombre, grasa, grasa_saturada, hidratos, azucares, proteinas, sal, valor_energetico
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
end


