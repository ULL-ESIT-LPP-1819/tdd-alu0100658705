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
		it "Se almacenan correctamente los datos" do
		@p1 = Individuo.new("Pablo",26,1)
		expect(@p1.nombre).to eq("Pablo")
		end
	end

	context "# Herencia" do
		before :each do
		@p1 = Individuo.new("Pablo",26,1)
		end

	it "un objeto individuo es una instancia de la clase individuo" do
	expect(@p1).to be_an_instance_of(Individuo)
	end

	it "un objeto individuo es un Individuo" do
	expect(@p1).to be_a_kind_of(Individuo)
	end

	it "un individuo es un Object" do
	expect(@p1).to be_a_kind_of(Object)
	end
end

	context "# Tipo" do
		before :each do
			@p1 = Individuo.new("Pablo",26,1)
		end

	it "Un objeto individuo responde a los métodos nombre, edad, sexo" do
		expect(@p1).to respond_to(:nombre, :edad, :sexo)
	end
end
end

RSpec.describe Pacientes do
	context "Almacenamiento de los datos para un paciente" do
		before :each do
		@paciente1 = Pacientes.new("Pablo",26,1,70,1.80,[70.5,71],[85,86],[300,305,320],[400,402,405],[400,412,300],[600,610,605])
		end
	it "Se almacenan los datos correctamente" do
		expect(@paciente1.to_s).to eq("(( Pablo,26,1 ),70,1.8,[70.5, 71],[85, 86],[300, 305, 320],[400, 402, 405],[400, 412, 300],[600, 610, 605])")
		end 
	end

	context "# Herencia" do
		before :each do
		@paciente1 = Pacientes.new("Pablo",26,1,70,1.80,[70.5,71],[85,86],[300,305,320],[400,402,405],[400,412,300],[600,610,605])
		end

	it "un objeto paciente es una instancia de la clase Paciente" do
		expect(@paciente1).to be_an_instance_of(Pacientes)
	end

	it "un objeto paciente no es una instancia de la clase Individuo" do
		expect(@paciente1).not_to be_an_instance_of(Individuo)
	end

	it "un objeto paciente no es una instancia de la clase Object" do
		expect(@paciente1).not_to be_an_instance_of(Object)
	end

	it "un paciente es un Paciente" do
		expect(@paciente1).to be_a_kind_of(Pacientes)
	end

	it "un paciente es un Individuo" do
		expect(@paciente1).to be_a_kind_of(Individuo)
	end

	it "un paciente es un Objeto" do
		expect(@paciente1).to be_a_kind_of(Object)
	end
end		
end
