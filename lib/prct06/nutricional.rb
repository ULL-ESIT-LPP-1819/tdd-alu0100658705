class Nutricional
	attr_reader :nombre, :grasa

	def initialize(nombre,grasa)
		@nombre, @grasa  = nombre, grasa
	end

	def Nombre
		@nombre
	end
	
	def Grasa
		@grasa
	end
end
