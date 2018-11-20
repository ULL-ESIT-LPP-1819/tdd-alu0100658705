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
end
