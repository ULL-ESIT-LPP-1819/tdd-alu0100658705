RSpec.describe Prct06 do

 	describe Nutricional do
	before :each do
		@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
		@sardinas = Nutricional.new("Pescamar",15,8,40,5,4.5,3.5)
		@aceitunas = Nutricional.new("Ibarra",16,8,20,12,7,2.8)
		@nutella = Nutricional.new("Nutella",31,11,58,57,6,0.2)
		@pechuga = Nutricional.new("Campofrio",1,0.3,4,2,14,1.4)
		@queso = Nutricional.new("Castillo",20,12,4,2,1.5,0.8)
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

	describe "# almacenamiento de la cantidad de hidratos" do
		it "Se almacena la cantidad de hidratos correctamente" do
		expect(@galletas.Hidratos).to eq(60)
		end
	end	


	describe "# almacenamiento de la cantidad de azúcares" do
		it "Se almacena la cantidad de azúcares correctamente" do
		expect(@galletas.Azucares).to eq(31)
		end
	end

	describe "# almacenamiento de la cantidad de proteinas" do
		it "Se almacena correctamente la cantidad de proteinas" do
		expect(@galletas.Proteinas).to eq(7.6)
		end
	end

	describe "#almacenamiento de la cantidad de sal" do
		it "Se almacena correctamente la cantidad de sal" do
		expect(@galletas.Sal).to eq(1.4)
		end
	end

	describe "# almacenando el valor energético" do
		it "Se almacena correctamente el valor energético" do
		expect(@galletas.Valor_energetico).to eq(1940.2)
		end
	end
  
	describe "# Datos formateados" do
		it "Datos formateados correctamente" do
		expect(@galletas.Formatear(@galletas.grasa,@galletas.Valor_energetico)).to eq([40.05,777])
		expect(@galletas.Formatear(@galletas.hidratos,@galletas.Valor_energetico)).to eq([52.57,1020])
		expect(@galletas.Formatear(@galletas.proteinas,@galletas.Valor_energetico)).to eq([6.66,129.2])
		expect(@galletas.Formatear(@galletas.sal,@galletas.Valor_energetico)).to eq([1.8,35])
		end
	end 
      end	

	# PRÁCTICA 7
	
	@nodo1 = Node.new(@galletas,nil,nil)
	@nodo2 = Node.new(@sardinas,nil,nil)
	@nodo3 = Node.new(@aceitunas,nil,nil)
	@nodo4 = Node.new(@nutella,nil,nil)
	@nodo5 = Node.new(@qpechuga,nil,nil)
	@nodo6 = Node.new(@queso,nil,nil)
		
	describe Lista do
		before :each do
			@lista=Lista.new()
			@lista.empujar(@nodo1)
			@lista.empujar(@nodo2)
			@lista.empujar(@nodo3)
			@lista.empujar(@nodo4)
			@lista.empujar(@nodo5)
			@lista.empujar(@nodo6)
		end		
	
		describe "# Prueba para Nodo" do
			it "El Nodo debe existir en la lista" do
			expect(@lista.cabeza != nil)
			end
		end

	end

end
