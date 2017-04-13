Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/guide" => 'landmarks#index'
  get "/guide/:id" => 'landmarks#show'
  
end
