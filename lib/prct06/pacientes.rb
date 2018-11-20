class Pacientes < Individuo
	attr_reader :peso, :talla, :cintura, :cadera, :tricipital, :bicipital, :subescapular, :suprailiaco
	
	def initialize(nombre,edad,sexo,peso,talla,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco)	
		super(nombre,edad,sexo)
		@peso, @talla, @cintura, @cadera, @tricipital, @bicipital, @subescapular, @suprailiaco = peso, talla, cintura, cadera, tricipital, bicipital, subescapular, suprailiaco
	end

	def to_s

	s = "("
	s << super.to_s
	s << ",#{@peso},#{@talla},#{@cintura},#{@cadera},#{@tricipital},#{@bicipital},#{@subescapular},#{@suprailiaco})"
	s
	
	end

	def imc
	(@pseo/(@talla*@talla)).round(2)
	end

	def clasificar
		if @head.value.imc < 30
			return "No está en tratamiento"
		elsif @head.value.imc <= 34.9
			return "Tratamiento para obesidad tipo 1"
		elsif @head.value.imc <= 39.9
			return "Tratamiento para obesidad tipo 2"
		else @head.value.imc > 40 
			return "Tratamiento para obesidad tipo 3"
		end
	end

end
