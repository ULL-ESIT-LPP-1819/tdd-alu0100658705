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
		@galletas = Nutricional.new("Oreo")
	end

	describe "# almacenamiento del Nombre" do
		it "Se almacena el nombre correctamente" do
		expect(@galletas.Nombre).to eq("Oreo")
		end
	end

end
