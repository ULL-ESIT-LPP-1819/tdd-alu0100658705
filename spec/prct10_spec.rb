RSpec.describe Pacientes do
	before :each do
		@persona1=Pacientes.new("Pablo",26,1,70,1.77,[],[],[],[],[],[])
		@persona2=Pacientes.new("Elena",26,0,69,1.60,[],[],[],[],[],[])
		@persona3=Pacientes.new("Sara",19,0,45,1.58,[],[],[],[],[],[])
		@persona4=Pacientes.new("Arturo",35,1,90,1.79,[],[],[],[],[],[])
		@persona5=Pacientes.new("Julio",40,1,83,1.70,[],[],[],[],[],[])
	end

	
	it "Comprobaciones para peso teórico ideal" do	
		expect(@persona1.peso_teorico(@persona1.talla)).to eq(70.25)
	end
	
	it "Comprobaciones para gasto energético basal" do
		expect(@persona1.gasto_energetico(@persona1.sexo,@persona1.peso,@persona1.talla,@persona1.edad)).to eq(597.13)
	end

#	before :each do
#		@desayuno = Nutricional.new("Cereales",15,12,30,40,5.2,0.6)
#		@aperitivo = Nutricional.new("Bocadillo",11,6,35,29,4.2,0.4)
#		@almuerzo = Nutricional.new("Ensalada",20,9,30,38,5.8,1.2)
#		@merienda = Nutricional.new("Natilla",10,7,15,16,4,0.5)
#		@cena = Nutricional.new("Sopa",1,0.3,4,2,14,3)	
#	
#
#		@menu1 = Lista.new
#
#		@menu1.insert([@desayuno,@aperitivo,@almuerzo,@merienda,@cena])

#	end

#	it "Comprobaciones para calcular el valor energético del menú" do
#		expect(@menu1.valor_menu(@menu1)).to eq(1500)
#	end
end
