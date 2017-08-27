Rails.application.routes.draw do
  
  devise_for :users
	
	root 'home#list'
	get 'home/list'
	get 'home/vote' => 'home#vote'
	get 'home/chart' => 'home#chart'

	# Update
  	post '/home/update/:vote_id/:current_user_id' => 'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
