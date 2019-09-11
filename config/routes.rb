Rails.application.routes.draw do
	namespace :api do
		resources :users do
 		end
 		resources :operaciones do
	 		collection do
	 			get '/circulo' => 'operaciones#circulo'
	 			get '/triangulo' => 'operaciones#triangulo'
	 			get '/cuadrado' => 'operaciones#cuadrado'
	 		end
	 	end
	end 
end

