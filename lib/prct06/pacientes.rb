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
	@indice=(@peso/(@talla*@talla)).round(2)

		if @indice < 18.5
			return "#{@indice}, No está en tratamiento y está delgado"
		elsif @indice <= 24.9
			return "#{@indice}, No está en tratamiento y su peso es adecuado"
		elsif @indice <= 34.9
			return "#{@indice}, Tratamiento para obesidad tipo 1"
		elsif @indice <= 39.9
			return "#{@indice}, Tratamiento para obesidad tipo 2"
		else @indice > 40 
			return "#{@indice}, Tratamiento para obesidad tipo 3"
		end
	end
	
	def get_imc
		(@peso/(@talla*@talla)).round(2)
	end
		

end
