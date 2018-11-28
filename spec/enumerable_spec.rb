RSpec.describe Lista do
	before :each do
		@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
		@sardinas = Nutricional.new("Pescamar",15,8,40,5,4.5,3.5)
		@aceitunas = Nutricional.new("Ibarra",16,8,20,12,7,4.3)
		@nutella = Nutricional.new("Nutella",31,11,58,57,6,0.2)
		@pechuga = Nutricional.new("Campofrio",1,0.3,4,2,14,3) 

		@lista1 = Lista.new

		@lista1.push_head(@galletas)
		@lista1.push_head(@sardinas)
		@lista1.push_head(@aceitunas)
		@lista1.push_head(@nutella)
		@lista1.push_head(@pechuga)
end

		context" Comprobaciones para enumerar lista de etiquetas" do
		it "Comprobación para método collect " do
		expect(@lista1.collect { |nodo| nodo.to_s }).to be == [@pechuga.to_s,@nutella.to_s,@aceitunas.to_s,@sardinas.to_s,@galletas.to_s]		
		end
		it "Comprobando método collect cantidad de azucar" do
		expect(@lista1.collect { |nodo| nodo.azucares > 20}).to be == [false,true,false,false,true]
		end
		it "Método max" do
		expect(@lista1.max).to eq(@nutella)
		end
		it "Método min" do
		expect(@lista1.min).to eq(@pechuga)
		end
		it "Método sort" do
		expect(@lista1.sort).to be == [@pechuga,@sardinas,@aceitunas,@galletas,@nutella]
		end
		it "Método select" do
		expect(@lista1.select { |nodo| nodo.azucares > 20 }).to eq([@nutella,@galletas])
		end
	end

		before :each do
			@p1 = Pacientes.new("Pablo",25,1,70,1.80,[],[],[],[],[],[])
			@p2 = Pacientes.new("Manolo",42,1,88,1.60,[],[],[],[],[],[])
			@p3 = Pacientes.new("Antonio",35,1,120,1.78,[],[],[],[],[],[])
			@p4 = Pacientes.new("Saray",27,0,125,1.55,[],[],[],[],[],[])
			@p5 = Pacientes.new("Carolina",22,0,45,1.60,[],[],[],[],[],[])

			@lista2 = Lista.new

			@lista2.insert([@p1,@p2,@p3,@p4,@p5])
		end

		context"Comprobaciones para enumerar lista de valoraciones nutricionales de individuos" do
			it "Método Collect" do
			expect(@lista2.collect { |nodo| nodo.get_imc > 35 }).to be == [false,false,true,true,false]
			end	
			it "Método max" do
			expect(@lista2.max).to eq(@p2)
			end
			it "Método min" do
			expect(@lista2.min).to eq(@p5)
			end
			it "Método sort" do
			expect(@lista2.sort).to be == [@p5,@p1,@p4,@p3,@p2]
			end
			it "Método select" do
			expect(@lista2.select { |nodo| nodo.get_imc > 35 }).to be == [@p3,@p4]
			end
		end
end
