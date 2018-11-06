class Nutricional
	attr_reader :nombre, :grasa, :grasa_saturada, :hidratos, :azúcares, :proteinas, :sal 

	def initialize(nombre,grasa,grasa_saturada,hidratos,azúcares,proteinas,sal)
		@nombre, @grasa, @grasa_saturada, @hidratos, @azúcares, @proteinas, @sal  = nombre, grasa, grasa_saturada, hidratos, azúcares, proteinas, sal
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
end
