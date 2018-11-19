class Pacientes < Individuo
	attr_reader :peso, :talla, :cintura, :cadera, :tricipital, :bicipital, :subescapular, :suprailiaco
	
	def initialize(nombre,edad,sexo,peso,talla,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco)	
		super(nombre,edad,sexo)
		@peso, @talla, @cintura, @cadera, @tricipital, @bicipital, @cadera, @tricipital, @subescapular, @suprailiaco = peso, talla, cintura, cadera, tricipital, bicipital, subescapular, suprailiaco
	end
end
