class Menu
  attr_accessor :dia, :tirulo

  	def initialize(dia,titulo, &block)
    		@dia = dia
		@titulo = titulo
		@comida = []

		@momento = []		
		@valor_energetico
		@cont = 0
		@v_total = 0  
		@tabla= [" ", "grasas", "carbohidratos", "proteínas", "fibra", "sal", "valor energético"]

    		if block_given?  
      			if block.arity == 1
        			yield self
      			else
      				instance_eval(&block) 
      		end
    		end
  	end

 	def to_s
		output = "#{@dia.ljust(15)}  Menú:#{@titulo.ljust(30)} Composición Nutricional" 
    		output << "\n#{'=' * 140}\n"
		
		@tabla.each do |obj|
		output << "#{obj.ljust(20)}"
		end
		
		output << "\n" 
		
		@comida.each do |obj|
			if (@cont == 0)
				if( @momento.include?(obj) == false )
					output << "\n"
					output << "#{obj}"
					output << "\n"
					@momento.push(obj)
					@cont+=1
				else
					@cont+=1
				end
			else
			output << "#{obj.ljust(20)}"
			@cont+=1
			end
			if (@cont == 8)
			output << "\n"
			@cont = 0
			end
		end
		output << "\n#{'=' * 140}\n"
		output << "Valor energético total: "
		output << " #{@v_total}"

	output	
	end

	def comida(nombre, opciones = {})
		@comida << nombre
    		@comida << "'#{opciones[:descripcion]}'"
		@comida << "#{opciones[:grasas]}"
		@comida << "#{opciones[:carbohidratos]}"	
		@comida << "#{opciones[:proteinas]}"	
		@comida << "#{opciones[:fibra]}"
		@comida << "#{opciones[:sal]}"
		@valor_energetico = ((opciones[:grasas]*36) + (opciones[:carbohidratos]*17)+(opciones[:proteinas]*17)+(opciones[:sal]*25)).round(2)
		@v_total += @valor_energetico
		@comida << "#{@valor_energetico}"
	
  	end
end

menu = Menu.new("Lunes", "Ganar Peso") do
	comida "Desayuno", 	:descripcion => "Tortilla francesa",
				:porcion => "2 huevos", 
				:gramos => 120,
				:grasas => 2.1,
				:carbohidratos => 49.5,
				:proteinas => 20,
				:fibra => 1.8,
				:sal => 0.1


	comida "Desayuno",      :descripcion => "Manzana",
                                :porcion => "1 pieza",
                                :gramos => 50,
                                :grasas => 0.8,
                                :carbohidratos => 15,
                                :proteinas => 8,
                                :fibra => 2.8,
                                :sal => 0.08

	comida "Almuerzo",      :descripcion => "Potaje",
                                :porcion => "1 plato",
                                :gramos => 180,
                                :grasas => 1.1,
                                :carbohidratos => 25,
                                :proteinas => 20,
                                :fibra => 9.8,
                                :sal => 0.9

	comida "Almuerzo",      :descripcion => "Empanada",
                                :porcion => "1 porción",
                                :gramos => 100,
                                :grasas => 3.5,
                                :carbohidratos => 48,
                                :proteinas => 16,
                                :fibra => 1.8,
                                :sal => 1.05

	comida "Cena",      :descripcion => "Yogourt",
                                :porcion => "1 porcion",
                                :gramos => 40,
                                :grasas => 0.6,
                                :carbohidratos => 12,
                                :proteinas => 10,
                                :fibra => 1.8,
                                :sal => 0.05

	comida "Cena",      :descripcion => "Bocadillo",
                                :porcion => "1/2 pan",
                                :gramos => 60,
                                :grasas => 1.2,
                                :carbohidratos => 26,
                                :proteinas => 9,
                                :fibra => 1.7,
                                :sal => 0.25
end


puts menu
