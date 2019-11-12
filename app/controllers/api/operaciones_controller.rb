module Api
	class OperacionesController < ApplicationController
		
		# /api/operaciones
		def index
			
			render json: "Ingeniería de Software chido"
		end

		# /api/operaciones/circulo
		def circulo
			
			#recibir parametro radio y convertir a double
			radio = params[:radio].to_d

			#calcular el area y el perimetro
			area = Math::PI * radio * radio
			perimetro = Math::PI * (radio * 2)

			#crear objeto que recibe como parametros esos valores calculados
			response = Response.new(area, perimetro)

			#regresar el json del objeto response
			render json: response
		end

		# /api/operaciones/cuadrado
		def cuadrado
			
			#recibir parametro lado y convertir a double
			lado = params[:lado].to_d

			#calcular el area y el perimetro
			area = lado * lado
			perimetro = lado * 4

			#crear objeto que recibe como parametros esos valores calculados
			response = Response.new(area, perimetro)

			#regresar el json del objeto response
			render json: response
		end

		# /api/operaciones/triangulo
		def triangulo
			
			#recibir parametro base, altura y convertirlos a double
			base = params[:b].to_d
			altura = params[:h].to_d

			#calcular el area y el perimetro
			area = (base * altura) / 2
			perimetro = base * 3

			#crear objeto que recibe como parametros esos valores calculados
			response = Response.new(area, perimetro)

			#regresar el json del objeto response
			render json: response
		end

	end
end










#--------------------------------------------------------
			# METODOS DE CADENAS

			#nombre = ""

			#if !nombre.empty?
			#	render json: "Hola amigo #{ nombre }"
			#else
			#	render json: "Hola amigo"
			#end

			#render json: "Hola amigo #{ nombre }" if !nombre.empty? 

			#render json: "No eres mayor de edad" unless edad >= 18

			#render json: "Hola".eql?("Hola") comparacion con cadenas
			#render json: "Hola".equal?("Hola") comparacion con objetos

			#--------------------------------------------------------
			# CONDICIONES CON IF Y UNLESS
			#edad = 15
			#unless edad >= 18
			#	render json: "No eres mayor de edad"
			#end

			#--------------------------------------------------------
			# CASE (o switch en otros lenguajes)

			#calificacion = params[:calif].to_i

			#render json: case calificacion
			#when 100
			#	"Muy bien"
			#when 90
			#	"Bien hecho"
			#when 80
			#	"Bien"
			#when 70
			#	"Mas o menos"
			#when 60
			#	"Casi horrible"
			#else
			#	"Reprobado"
			#end

			#--------------------------------------------------------
			# ARREGLOS (Each - iterador)
			#array = %w[12 13 43 28 23] # %w es para no poner comas y son cadenas
			#array << 34

			#resultado = ""
			#array.each_with_index do |item, pos| 
			#	resultado += "Pos #{pos} = #{item.to_i} \n"
			#end

			#array.each do |item|
			#	resultado += "#{item.to_i} \n"
			#end