class Nutricional
	include Comparable
	attr_reader :nombre, :grasa, :grasa_saturada, :hidratos, :azucares, :proteinas, :sal, :valor_energetico 

	def initialize(nombre,grasa,grasa_saturada,hidratos,azucares,proteinas,sal)
		@nombre, @grasa, @grasa_saturada, @hidratos, @azucares, @proteinas, @sal  = nombre, grasa, grasa_saturada, hidratos, azucares, proteinas, sal
	end

	def to_s
		"(#{@nombre},#{@grasa},#{@grasa_saturada},#{@hidratos},#{@azucares},#{@proteinas},#{@sal})"
	end

	def Nombre
		@nombre
	end
	
	def Grasa
		@grasa
	end
	
	def Grasa_saturada
		@grasa_saturada
	end

	def Hidratos
		@hidratos
	end

	def Azucares
		@azucares
	end
	
	def Proteinas
		@proteinas
	end

	def Sal
		@sal
	end

	# Métodos para hallar el valor energético
	def Valor_energetico
		
		@valor_energetico=((@grasa*36)+(@hidratos*17)+(@proteinas*17)+(@sal*25))
	end

	# Obtener una etiqueta formateada
	def Formatear(a,b)
		if ( a == grasa)
			porc=((a*100*37)/b).round(2)
			calorias=37*a
		end
		
	       	if ( a == hidratos)
			porc=((a*100*17)/b).round(2)
			calorias=17*a
		end

		if ( a == proteinas)
			porc=((a*100*17)/b).round(2)
			calorias=17*a
		end
		
		if (a == sal)
			porc=((a*100*25)/b).round(2)
			calorias=25*a
		end

		return porc, calorias
	end

	# Método para comparar etiquetas
	def <=>(other)
		return nil unless other.is_a? Nutricional #Devuelve un "nil" si no pertece a nutricional
		grasa <=> other.grasa # Compara en función de la cantidad de grasa
	end	

	
	# PRÁCTICA 11:



	# Método obtener un nuevo array ordenado mediante un for
	def ordenar_for(menu)
        	for i in 0..menu.length-1
              	for j in 0..(menu.length - (2+i))
               		@valor_1 = menu[j].collect {|nodo| nodo.Valor_energetico } 
                	@valor_2 = menu[j+1].collect {|nodo| nodo.Valor_energetico }                    
              	  		if ( @valor_1.reduce(:+) < @valor_2.reduce(:+) ) 
                            		temp = menu[j]
                                       	menu[j] = menu[j+1]
                                        menu[j+1] = temp
                             	end
              	end
              	end
   	return menu
        end



	# Ejemplo para la comprobación de los métodos
	producto = Nutricional.new("Bollicao",80,20,100,50,12,3);
	
	puts "Valor Energético #{producto.Valor_energetico}"
	puts "----------------------------------------------"
	puts "Porcentaje , Calorias"
	puts "Grasa #{producto.Formatear(producto.grasa,producto.Valor_energetico)}"
	puts "Hidratos #{producto.Formatear(producto.hidratos,producto.Valor_energetico)}" 
	puts "Proteina #{producto.Formatear(producto.proteinas,producto.Valor_energetico)}"
	puts "Sal #{producto.Formatear(producto.sal,producto.Valor_energetico)}"
 
	puts "----------------------------------------------"
	if  producto.grasa > 70
	puts "Ha superado el valor de Ingesta de Referencia para las grasas" 
	end

	if producto.hidratos > 260
        puts "Ha superado el valor de Ingesta de Referencia para los hidratos"
        end

	if  producto.azucares > 90 
        puts "Ha superado el valor de Ingesta de Referencia para los azucares"
        end
	
	if  producto.proteinas > 50
        puts "Ha superado el valor de Ingesta de Referencia para las proteinas"
        end
	
	if  producto.sal > 6
        puts "Ha superado el valor de Ingesta de Referencia para la sal"
        end

	if producto.Valor_energetico > 8400
	puts "Ha superado el valor de Ingesta de Referencia para el valor energético"
	end

		
	
end



