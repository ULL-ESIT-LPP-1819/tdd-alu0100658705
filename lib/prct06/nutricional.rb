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
end
