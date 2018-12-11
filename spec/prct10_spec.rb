RSpec.describe Pacientes do
	before :each do
		@persona1=Pacientes.new("Pablo",26,1,70,1.77,[],[],[],[],[],[])
		@persona2=Pacientes.new("Elena",26,0,69,1.60,[],[],[],[],[],[])
		@persona3=Pacientes.new("Sara",19,0,45,1.58,[],[],[],[],[],[])
		@persona4=Pacientes.new("Arturo",35,1,90,1.79,[],[],[],[],[],[])
		@persona5=Pacientes.new("Julio",40,1,83,1.70,[],[],[],[],[],[])

		@personas = [@persona1, @persona2, @persona3, @persona4, @persona5]
	

	# PESO TEÓRICO IDEAL:
	# Convertimos el bloque que calcula el peso teórico ideal en una clase Proc
	# Para las comprobaciones llamamos al método que convierte los metros en cm e invoca a pt con un parámetro
	@pt = Proc.new {|x| peso_ideal = (x-150)*0.75+50 }

	def peso_teorico(individuos)
		 individuos.collect { |nodo| @pt.call(nodo.talla*100) }
	end


	# GASTO ENERGÉTICO BASAL
	# usamos lambda
	@gb_m = -> arg1, arg2, arg3 {((10*arg1)+(6.25*arg2)-(5*arg3)-161).round(2)}
	@gb_h = -> arg1, arg2, arg3 {((10*arg1)+(6.25*arg2)-(5*arg3)+5).round(2)}

	def gasto_basal(individuos)
		@array = individuos.collect {|nodo| if nodo.sexo == 0; @gb_m.call(nodo.peso, nodo.talla*100, nodo.edad) else @gb_h.call(nodo.peso, nodo.talla*100, nodo.edad) end}
		return @array
		end
	

	# EFECTO TERMÓGENO
	def efecto_termogeno(individuos)
		@v_ter = gasto_basal(individuos)
		@v_ter.collect {|nodo| nodo*0.10}
	end
	


	# GASTO ACTIVIDAD FÍSICA


	# GASTO ENERGÉTICO TOTAL


	end
	context"Comprobacion para PESO TEÓRICO IDEAL" do
		it "Vector personas" do	
			expect(peso_teorico(@personas)).to eq([70.25, 57.5, 56.0, 71.75, 65])
		end
	end

	context"Comprobaciones para GASTO ENERGÉTICO BASAL" do
		it "Vector personas" do
			expect(gasto_basal(@personas)).to eq([1681.25, 1399, 1181.5, 1848.75, 1697.5])
		end
	end

	context "Comprobaciones para EFECTO TERMÓGENO" do
		it "Vector personas" do
			expect(efecto_termogeno(@personas)).to eq([168.125, 139.9, 118.15, 184.875, 169.75])
		end
	end

	#it "Comprobaciones para gasto energético basal" do
	#	expect(@persona1.gasto_energetico(@persona1.sexo,@persona1.peso,@persona1.talla,@persona1.edad)).to eq(597.13)
	#end

	#before :each do
	#	@desayuno = Nutricional.new("Cereales",15,12,30,40,5.2,0.6)
	#	@aperitivo = Nutricional.new("Bocadillo",11,6,35,29,4.2,0.4)
	#	@almuerzo = Nutricional.new("Ensalada",20,9,30,38,5.8,1.2)
	#	@merienda = Nutricional.new("Natilla",10,7,15,16,4,0.5)
	#	@cena = Nutricional.new("Sopa",1,0.3,4,2,14,3)	

	#end

	#it "Comprobaciones para calcular el valor energético del menú" do
	#	expect(@menu1.valor_menu(@menu1)).to eq(1500)
	#end
end
