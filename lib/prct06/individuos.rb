class Individuo 
	include Comparable
	attr_reader :nombre, :edad, :sexo

	def initialize(nombre,edad,sexo)
		@nombre, @edad, @sexo = nombre, edad, sexo 	
	end

	def to_s
		"( #{@nombre},#{@edad},#{@sexo} )"	
	end

	# Método comparable para Individuos
	def <=>(other)
		return nil unless other.is_a? Individuo
		@edad <=> other.edad
	end

end

