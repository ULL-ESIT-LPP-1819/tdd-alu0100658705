class Individuo

	attr_reader :nombre, :edad, :sexo

	def initialize(nombre,edad,sexo)
		@nombre, @edad, @sexo = nombre, edad, sexo 
	end
end