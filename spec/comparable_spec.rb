RSpec.describe Nutricional do
	before :each do

	@galletas = Nutricional.new("Oreo",21,12,60,31,7.6,1.4)
	@sardinas = Nutricional.new("Pescamar",15,8,40,5,4.5,1.4)
	@nutella = Nutricional.new("Nutella",31,11,58,57,6,1)

	end

	context"# Comparaciones entre etiquetas" do

		it "Comprueba que la CANTIDAD DE GRASA de las galletas no es menor que en las sardinas" do
		expect(@galletas < @sardinas).to be false
		end
		it "Es mayor en las galletas que en las sardinas" do
		expect(@galletas > @sardinas).to be true
		end
		it "La cantidad de grasa no es igual" do
		expect(@galletas == @sardinas).to be false
		end
		it "No es menor o igual" do
		expect(@galletas <= @sardinas).to be false
		end
		it "Es mayor o igual" do
		expect(@galletas >= @sardinas).to be true
		end
		it "Las grasas de las galletas están entre las de la Nutella y las sardinas" do
			expect(@galletas.between?(@sardinas, @nutella)).to be true
		end		
	end
end
RSpec.describe Pacientes do
	before :each do

		@p1 = Pacientes.new("Pablo",26,1,69,1.70,[70.5,71],[85,86],[300,305,320],[400,402,405],[400,412,300],[600,610,605])
		@p2 = Pacientes.new("Manolo",56,1,80,1.70,[90.2,90,4],[90,90.2],[350,355,360],[450,455,450],[460,470,420],[700,710,705])
		@p3 = Pacientes.new("Ana",20,0,1.50,48,[],[],[],[],[],[])
	end

	context"# Comparaciones entre individuos" do

		it "La edad del paciente 1 no es mayor que la del paciente 2" do
		expect(@p1 >= @p2).to be false
		end
		it "La edad del paciente 1 es menor que la del paciente 2" do
		expect(@p1 < @p2).to be true
		end
		it "La talla del paciente 1 es igual a la del paciente 2" do
		expect(@p1 == @p2).to be false
		end 
		it "La edad del paciente 2 es mayor que la del paciente 1" do
		expect(@p2 > @p1).to be true
		end
		it "La edad del paciente 1 es menor o igual a la del paciente 2" do
		expect(@p1 <= @p2).to be true
		end
		it "La edad del paciente 1 está comprendida entre 20 y 30 años" do
		expect(@p1.between?(@p3,@p2)). to be true
		end

	end
end
