require 'prct06/nutricional.rb'
RSpec.describe Prct06 do
  	#it "has a version number" do
    	#expect(Prct06::VERSION).not_to be nil
  	#end

  	#it "does something useful" do
    	#expect(true).to eq(true)
  	#end

 	#describe Nutricional do
	before :each do
		@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
	end

	describe "# almacenamiento del Nombre" do
		it "Se almacena el nombre correctamente" do
		expect(@galletas.Nombre).to eq("Oreo")
		end
	end

	describe "# almacenamiento de la cantidad de grasa" do
		it "Se almacena la cantidad de grasa correctamente" do
		expect(@galletas.Grasa).to eq(21)
		end
	end

	describe "# almacenamiento de la cantidad de grasas saturadas" do
		it "Se almacena la cantidad de grasa saturada correctamente" do
		expect(@galletas.Grasa_saturada).to eq(12)
		end
	end
end
