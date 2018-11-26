RSpec.describe Nutricional do
	before :each do

	@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
	@sardinas = Nutricional.new("Pescamar",15,8,40,5,4.5,3.5)
	@nutella = Nutricional.new("Nutella",31,11,58,57,6,0.2)
	@pechuga = Nutricional.new("Campofrio",1,0.3,4,2,14,3)

	end

	context"# Pruebas para Nutricional" do
		it "Comprueba que galletas es igual a sardinas" do
		expect(@galletas.nombre < @sardinas.nombre).to be true
		end
		it "Comprueba que la cantidad de grasa es mayor en las galletas que en las sardinas" do
		expect(@galletas.grasa > @sardinas.grasa).to eq(true)
		end
		
	end
end
