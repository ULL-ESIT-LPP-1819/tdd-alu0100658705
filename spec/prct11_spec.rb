RSpec. describe Prct06 do
	before :each do
		@cereales = Nutricional.new("Cereales",15,12,12,13,5.2,0.6)
		@jugo = Nutricional.new("Jugo",11,6,4,6,4.2,0.4)
		@manzana = Nutricional.new("Manzana",5,9,2,8,5.8,1.2)
		@ensalada = Nutricional.new("Ensalada",10,7,10,10,4,0.5)
		@bocadillo = Nutricional.new("Bocadillo",5,0.3,4,2,14,0.2)	
		@pescado = Nutricional.new("Pescado",9,2,10,9,6,0.8)
		@pollo = Nutricional.new("Pollo",5,9,10,20,4,1)
		@pasta = Nutricional.new("Pasta",12,11,19,23,0.8,0.9)
		@yogourt = Nutricional.new("Yogourt",9,8.5,5,10,0.5,0.9)
		@sopa = Nutricional.new("Sopa",5,3,11,12,10,1.3)
		@pera = Nutricional.new("Pera",9,8,4,17,2,0.1)

		@menu0 = [@manzana, @ensalada, @pollo, @sopa, @bocadillo]		
		@menu1 = [@cereales,@jugo,@ensalada,@yogourt]
		@menu2 = [@jugo, @manzana, @pasta, @sopa, @cereales]
		@menu3 = [@manzana, @bocadillo, @cereales, @pera]
		@menu4 = [@jugo, @cereales, @pollo, @pescado, @bocadillo, @sopa]
		@menu5 = [@cereales, @manzana, @pasta]
		@menu6 = [@jugo, @cereales, @bocadillo]
		@menu7 = [@manzana, @jugo, @sopa, @yogourt]
		@menu8 = [@bocadillo, @pera, @yogourt, @pescado, @pasta]
		@menu9 = [@ensalada, @pollo, @cereales, @pasta, @manzana]

		@menu = [@menu0, @menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9]
		
		end


		# ORDENAR MEDIANTE UN FOR
		def ordenar_for(menu)  
				for i in 0..menu.length-1
					for j in 0..(menu.length - (2+i))
					@valor_1 = menu[j].collect {|nodo| nodo.Valor_energetico}
					@valor_2 = menu[j+1].collect {|nodo| nodo.Valor_energetico}
						if ( @valor_1.reduce(:+) > @valor_2.reduce(:+) )
						temp = menu[j]
						menu[j] = menu[j+1]
						menu[j+1] = temp
					end
					end
				end
		return menu
		end	

		# ORDENAR MEDIANTE UN EACH
		def ordenar_each(menu)
			menu_ordenado = Array.new
	
			bloque_each = Proc.new {	
				menu.each do |submenu1|
					menu.each do |submenu2|
						if ( submenu1.collect {|x| x.Valor_energetico}.reduce(:+) > submenu2.collect {|y| y.Valor_energetico}.reduce(:+) )
				 			temp = submenu1
							submenu1 = submenu2
							submenu2 = temp
						end	
					end		
					menu_ordenado.push(submenu1)
					menu.delete(submenu1)
				end
			if menu.length != 0
			bloque_each.call(menu)
			end
			
			}

			bloque_each.call(menu)		

			#for i in 0..menu_ordenado.length-1
			#	puts menu_ordenado[i].collect {|nodo| nodo.Valor_energetico}.reduce(:+)		
			#end
			return menu_ordenado	
		end


		# ORDENAR MEDIANTE UN SORT
		def ordenar_sort(menu)
			menu_sort = Array.new 
			menu_sort = menu.sort_by { |nodo| nodo.collect {|nodo| nodo.Valor_energetico }.reduce(:+) }
		return menu_sort
		end

		def mostrar(menu)
		array_each = Array.new
			menu.each do |array_menu|
			array_menu.collect {|nodo| nodo.Valor_energetico}
			end	
	

		end

		context"Comprobaciones para ordenar un array de menus por valor energético" do
			it"Funciona para mostrar el menu ordenado mediante un for" do
			expect(ordenar_for(@menu)).to eq([@menu6, @menu7, @menu5, @menu3, @menu1, @menu0, @menu8, @menu9, @menu2, @menu4])
			end
			it"Funciona para moetrar el menu ordenado mediantes un sort" do
			expect(ordenar_sort(@menu)).to eq([@menu6, @menu7, @menu5, @menu3, @menu1, @menu0, @menu8, @menu9, @menu2, @menu4])
			end
			it"Funciona para mostrar el menu ordenado mediantes un each" do
                        expect(ordenar_each(@menu)).to eq([@menu6, @menu7, @menu5, @menu3, @menu1, @menu0, @menu8, @menu9, @menu2, @menu4])
                        end
		end 
end

	
