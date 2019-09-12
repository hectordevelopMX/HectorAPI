Rails.application.routes.draw do
	namespace :api do
		resources :users do
 		end
 		resources :operaciones do
	 		collection do
	 			post '/circulo' => 'operaciones#circulo'
	 			post '/triangulo' => 'operaciones#triangulo'
	 			post '/cuadrado' => 'operaciones#cuadrado'
	 		end
	 	end
	end 
end

