Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :edit, :update, :new, :update]
  resources :students, only: [:index, :show, :new, :edit, :update]
  post '/students/create', to: 'students#create'
  get '/students/:id/update', to: 'students#update'
  post '/ducks/create', to: 'ducks#create'
  get 'ducks/:id/update', to: 'ducks#update'
  
end
