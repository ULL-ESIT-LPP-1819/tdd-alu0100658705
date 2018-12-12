RSpec.describe Prct06 do
	before :each do
		@persona1=Pacientes.new("Pablo",26,1,70,1.77,[],[],[],[],[],[])
		@persona2=Pacientes.new("Elena",26,0,69,1.60,[],[],[],[],[],[])
		@persona3=Pacientes.new("Sara",19,0,45,1.58,[],[],[],[],[],[])
		@persona4=Pacientes.new("Arturo",35,1,90,1.79,[],[],[],[],[],[])
		@persona5=Pacientes.new("Julio",40,1,83,1.70,[],[],[],[],[],[])

		@personas = [@persona1, @persona2, @persona3, @persona4, @persona5]
		@factor_actividad = [0.27, 0.12, 0.12, 0.54, 0.12]

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
		individuos.collect {|nodo| if nodo.sexo == 0; @gb_m.call(nodo.peso, nodo.talla*100, nodo.edad) else @gb_h.call(nodo.peso, nodo.talla*100, nodo.edad) end}
	end
	

	# EFECTO TERMÓGENO
	def efecto_termogeno(individuos)
		@v_ter = gasto_basal(individuos)
		@v_ter.collect {|nodo| nodo*0.10}
	end
	

	# GASTO ACTIVIDAD FÍSICA
	def gasto_actividad(individuos,factor)
		@v_act = gasto_basal(individuos)
		@v_act.zip(factor).map{|x, y| (x * y).round(2)}
		 
	end
	

	# GASTO ENERGÉTICO TOTAL
	def gasto_total(individuos,factor)
	@v_1 = gasto_basal(individuos)
	@v_2 = efecto_termogeno(individuos)
	@v_3 = gasto_actividad(individuos,factor)

	@v_1.zip(@v_2, @v_3).map {|x, y, z| (x + y + z).round(2)}
	end


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

	
	context"Comprobaciones para GASTO ACTIVIDAD FÍSICA" do
		it "Vector personas" do
		expect(gasto_actividad(@personas,@factor_actividad)).to eq([453.94, 167.88, 141.78, 998.33, 203.7])
		end
	end

	context"Comprobaciones para GASTO ENERGÉTICO TOTAL" do
		it "Vector personas" do
		expect(gasto_total(@personas,@factor_actividad)).to eq([2303.32, 1706.78, 1441.43, 3031.96, 2070.95])
		end
	end



	before :each do
		@cereales = Nutricional.new("Cereales",15,12,30,40,5.2,0.6)
		@jugo = Nutricional.new("Jugo",11,6,35,29,4.2,0.4)
		@manzana = Nutricional.new("Manzana",20,9,30,38,5.8,1.2)
		@ensalada = Nutricional.new("Ensalada",10,7,15,16,4,0.5)
		@bocadillo = Nutricional.new("Bocadillo",5,0.3,4,2,14,0.2)	
		@pescado = Nutricional.new("Pescado",9,23,45,21,6,0.8)
		@pollo = Nutricional.new("Pollo",5,9,10,20,4,1)
		@pasta = Nutricional.new("Pasta",12,11,19,23,0.8,0.9)
		@yogourt = Nutricional.new("Yogourt",9,8.5,21,15,0.5,0.9)
		@sopa = Nutricional.new("Sopa",5,3,15,18,20,1.3)
		
		@menu1 = [@cereales, @ensalada, @pescado, @pollo, @yogourt]
		@menu2 = [@jugo, @manzana, @pasta, @sopa, @cereales]
		@menu3 = [@manzana, @yogourt, @bocadillo, @pasta, @sopa]
		@menu4 = [@jugo, @cereales, @pollo, @pescado, @bocadillo, @sopa]
		@menu5 = [@cereales, @manzana, @ensalada, @pescado, @pasta, @yogourt]
					

	def verificar(individuos, menu)
		@valor_final = Array.new
		@se_cumple = -> {return "Se cubren las exigencias calóricas"}
		@no_cumple = -> {return "No se cubren las exigencias calóricas"}		

		
		menu.each do |array_menu|
		@valor_e = array_menu.collect {|nodo| nodo.Valor_energetico}
		@valor_final.push(@valor_e.reduce(:+))
		end 
				
		@valor_g = gasto_total(individuos, @factor_actividad)
		@margen = @valor_g.collect { |nodo| nodo*0.10}

		@valor_g.zip(@valor_final,@margen).map {| x, y, z| if (y + z - x).round(2) >= 0; @se_cumple.call else @no_cumple.call end}  
		
	end

	
	end
	
context"Comprobaciones para vereficar las exigencias calóricas del organismo" do
		it "Prueba para el primer individuo con el primer menú" do
		prueba_p = [@persona1]
		prueba_m = [@menu1]
		expect(verificar(prueba_p, prueba_m)).to eq(["Se cubren las exigencias calóricas"])
		end
		it "Prueba para dos individuos con dos menus" do
		personas_dos = [@persona2,@persona3]
		menu_dos = [@menu2,@menu1]
		expect(verificar(personas_dos, menu_dos)).to eq(["Se cubren las exigencias calóricas", "Se cubren las exigencias calóricas"])
		end
		it "Prueba para tres individuos con el tres menús" do
		personas_tres = [@persona2,@persona3,@persona4]
		menu_tres = [@menu5,@menu4,@menu2]
		expect(verificar(personas_tres, menu_tres)).to eq(["Se cubren las exigencias calóricas", "Se cubren las exigencias calóricas", "Se cubren las exigencias calóricas"])
		end
	end
end
