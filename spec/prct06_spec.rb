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


	describe "# Mostrar los datos" do
		it "Se muestran todos los datos" do
		expect(@galletas.to_s).to eq("(Oreo,21,12,60,31,7.6,1.4)")
		end
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

	describe "# almacenamiento de la cantidad de sal" do
		it "Se almacena correctamente la cantidad de sal" do
		expect(@galletas.Sal).to eq(1.4)
		end
	end

	describe "# Cálculo del valor energético" do
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
