Rails.application.routes.draw do
  devise_for :users
  get 'aliados/index'
  get 'beneficios/index'
  get 'reportar/index'
  get 'ruta/index'
  get 'cultura/index'
  get 'ingrese/index'
  get 'contactenos/index'
  get 'registration/new'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end