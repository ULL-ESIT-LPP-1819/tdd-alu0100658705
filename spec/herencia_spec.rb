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
	context "# tipo" do
		before :each do
		@paciente1= Pacientes.new("Pablo",26,1,70,1.80,[70.5,71],[85,86],[300,305,320],[400,402,405],[400,412,300],[600,610,605])
		end
		
		it "un objeto paciente responde al método imc" do
			expect(@paciente1).to respond_to(:imc)
		end

end
end		


		
RSpec.describe Lista do
	before :each do

		@paciente1 = Pacientes.new("Pablo",26,1,70,1.80,[70.5,71],[85,86],[300,305,320],[400,402,405],[400,412,300],[600,610,605])
		@paciente2 = Pacientes.new("Manolo",42,1,88,1.60,[90.2,90,4],[90,90.2],[0,0,0],[0,0,0],[0,0,0],[0,0,0])
		@paciente3 = Pacientes.new("Antonio",35,1,120,1.78,[0,0],[0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0])
		@paciente4 = Pacientes.new("Saray",27,0,125,1.55,[0,0],[0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0])
		@paciente5 = Pacientes.new("Carolina",22,0,45,1.60,[0,0],[0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0])
				
		@lista = Lista.new

		@lista.push_head(@paciente1)
		@lista.push_head(@paciente2)
		@lista.push_head(@paciente3)
		@lista.push_head(@paciente4)	
		@lista.push_head(@paciente5)
		end	

	context "# Herencia" do
		it "un objeto lista es una instancia de la clase Lista"	do
		expect(@lista).to be_an_instance_of(Lista)
		end
		it "un objeto lista no es una instancia de la clase Individuo" do
		expect(@lista).not_to be_an_instance_of(Individuo)
		end
		it "un objeto lista es una Lista" do	
		expect(@lista).to be_a_kind_of(Lista)
		end
		it "un objeto lista es un Objeto" do
		expect(@lista).to be_a_kind_of(Object)
		end
		it "un objeto lista es un BasicObject" do
		expect(@lista).to be_a_kind_of(BasicObject)
		end

	end

	context "# Tipo" do
		it " un objeto lista responde al método pop_head" do
		expect(@lista).to respond_to(:pop_head)
		end
		it "un objeto lista responde al método push_tail" do
		expect(@lista).to respond_to(:push_tail)
		end
	end

	context "# Pruebas para clasificar según imc" do
		
		it "el paciente 1 no encuentra en tratamiento" do
			expect(@lista.get_value.imc).to eq("17.58, No está en tratamiento y está delgado")
		end

		it "el paciente 2 se encuentra en tratamiento para obesidad tipo 3" do
			@lista.pop_head()
			expect(@lista.get_value.imc).to eq("52.03, Tratamiento para obesidad tipo 3")
		end

		it "el paciente 3 se encuentra en tratamiento para obesidad tipo 2" do
			@lista.pop_head()
			@lista.pop_head()
			expect(@lista.get_value.imc).to eq("37.87, Tratamiento para obesidad tipo 2")
		end

		it "el paciente 4 se encuentra en tratamiento para obesidad tipo 1" do
			@lista.pop_head()
			@lista.pop_head()
			@lista.pop_head()
			expect(@lista.get_value.imc).to eq("34.37, Tratamiento para obesidad tipo 1")
		end

		it "el paciente 5 no se encuentra en tratamiento pero está delgado" do
			@lista.pop_head()
			@lista.pop_head()
			@lista.pop_head()
			@lista.pop_head()
			expect(@lista.get_value.imc).to eq("21.6, No está en tratamiento y su peso es adecuado")
		end
end
					
end
