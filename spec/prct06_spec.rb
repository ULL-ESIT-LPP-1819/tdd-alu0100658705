RSpec.describe Prct06 do
	describe Nutricional do
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

# ------------ PRUEBAS PARA LA PRÁCTICA 7:------------------------------------

	describe Lista do
	before :each do
			
		@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
                @sardinas = Nutricional.new("Pescamar",15,8,40,5,4.5,3.5)
                @aceitunas = Nutricional.new("Ibarra",16,8,20,12,7,4.3)
                @nutella = Nutricional.new("Nutella",31,11,58,57,6,0.2)
                @pechuga = Nutricional.new("Campofrio",1,0.3,4,2,14,3)
                @queso = Nutricional.new("Castillo",20,12,4,2,1.5,0.8)
		
			
			@lista = Lista.new			
		end
	

		describe "# Prueba para Nodo" do
			it "El Nodo debe existir en la lista" do
			@lista.push_head(@galletas)
			expect(@lista.get_value).to eq(@galletas)
			end
		end
		
		describe "# Acceder a valores individuales" do
			it  "Se pueden acceder a los valores del nodo" do
			@lista.push_head(@sardinas)
			expect(@lista.get_value.sal).to eq(3.5)
			end
		end

		describe "# Los nodos pueden introducirse desde el tail" do
			it "El nodo debe existir en la lista" do
			@lista.push_tail(@aceitunas)
			expect(@lista.get_value).to eq(@aceitunas)
			end
		end
		describe "# Los nodos pueden extraerse desde el tail" do
			it "El nodo se extrae" do
			@lista.push_tail(@queso)
			@lista.push_tail(@pechuga)
			@lista.pop_tail()
			expect(@lista.get_value.nombre).to eq("Castillo")
			end
		end

		# PRUEBAS PARA CLASIFICAR LA LISTA DE ETIQUETAS SEGÚN LOS GRAMOS DE SAL

	before :each do
		@lista1=Lista.new()		

		@lista1.push_head(@galletas)
		@lista1.push_head(@sardinas)
		@lista1.push_head(@aceitunas)
		@lista1.push_head(@nutella)
		@lista1.push_head(@pechuga)
		@lista1.push_head(@queso)
		end

		describe "#Pruebas para clasificar la lista" do
			it "El valor es correcto para: Poca sal" do
			expect(@lista1.clasificar).to eq("Poca Sal")
			end
		

			it "El valor es correcto para otro nodo: Sal normal" do
			@lista1.pop_head()			
			expect(@lista1.clasificar).to eq("Sal normal")
			end

			it "El valor es correcto para otro nodo: Mucha sal" do
			@lista1.pop_head()
			@lista1.pop_head()
			@lista1.pop_head()
			expect(@lista1.clasificar).to eq("Mucha sal")
			end
			
			

		end	
	end
end


