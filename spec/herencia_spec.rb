RSpec.describe Nutricional do
		
	context "# almacenamiento de los datos" do
		it "Se almacenan correctamente" do
			@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
		expect(@galletas.Nombre).to eq("Oreo")
		end
	end

	context "#Herencia" do
		before :each do
		@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
	end

	it "Galletas es una instancia de la clase Nutricional" do
		expect(@galletas).to be_an_instance_of(Nutricional)
	end
	
	it "Galletas no es una instancia de la clase Object" do
		expect(@galletas).not_to be_an_instance_of(Object)
	end

	it "Galletas no es una instancia de la clase BasicObject" do
		expect(@galletas).not_to be_an_instance_of(BasicObject)
	end
	
	it "Galletas forma parte de Nutricional" do
		expect(@galletas).to be_a_kind_of(Nutricional)
	end

	it "Galletas es un Object" do
		expect(@galletas).to be_a_kind_of(Object)
	end

	it "Galletas es un BasicObject" do
		expect(@galletas).to be_kind_of(BasicObject)
	end

end

	context "# Tipo" do
		before :each do
			@galletas=Nutricional.new("Oreos",21,12,60,31,7.6,1.4)
		end


	it "responde al método Valor Energético" do
		expect(@galletas).to respond_to(:Valor_energetico)
	end

	it "responde al método Formatear" do
		expect(@galletas).to respond_to(:Formatear)
	end
end	

end

RSpec.describe Individuo do
	context "# Almacenamiento de los datos para Individuo" do
		it "Se almacenan correctamente lod datos" do
		p1 = Individuo.new("Pablo",26,1)
		expect(p1.nombre).to eq("Pablo")
		end
	end
end
