module Api
class OperacionesController < ApplicationController
	
	def index
      render json: "Saludos amigos!"
    end

	def circulo
	    
		radio = params[:radio]

		area = Math::PI * radio * radio
		perimetro = Math::PI * (radio * 2)

		response = Response.new(area, perimetro)

    	render json: response
	end

	def cuadrado
	    
		lado = params[:lado]

		area = lado * lado
		perimetro = lado * 4

		response = Response.new(area, perimetro)

    	render json: response
	end

	def triangulo
	    
		base = params[:base]
		altura = params[:altura]

		area = (base * altura) / 2
		perimetro = base * 3

		response = Response.new(area, perimetro)

    	render json: response
	end

	end
end

