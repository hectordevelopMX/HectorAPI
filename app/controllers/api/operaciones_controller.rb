module Api
class OperacionesController < ApplicationController
	
	def index
      render json: "Hola desde Ruby on Rails!"
    end

	def circulo
	    
		radio = params[:radio].to_d

		area = Math::PI * radio * radio
		perimetro = Math::PI * (radio * 2)

		response = Response.new(area, perimetro)

    	render json: response
	end

	def cuadrado
	    
		lado = params[:lado].to_d

		area = lado * lado
		perimetro = lado * 4

		response = Response.new(area, perimetro)

    	render json: response
	end

	def triangulo
	    
		base = params[:base].to_d
		altura = params[:altura].to_d

		area = (base * altura) / 2
		perimetro = base * 3

		response = Response.new(area, perimetro)

    	render json: response
	end

	end
end

