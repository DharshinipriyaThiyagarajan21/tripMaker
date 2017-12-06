Rails.application.routes.draw do

	get 'destination/new'
	get 'user/new'
	get 'poi/new'
	get 'trip/new'
	post 'trip/get_data'

	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  
	get 'trips' => 'trip#index'
	get 'trips/new' => 'trip#new'
	get 'thankyou' => 'trip#thank_you'

	get 'pois' => 'poi#index'
	get 'pois/new' => 'poi#new'

	get 'users' => 'user#index'
  	get 'users/new' => 'user#new'

  	get 'destinations' => 'destination#index'
  	get 'destinations/new' => 'destination#new'

  resources 'user'
  resources 'trip'
  resources 'poi'
  resources 'destination'
  resources 'home'

end
