Rails.application.routes.draw do
  resources :tareas
  resources :admins
  devise_for :users
  root 'login#index'
  get :generate_pdf, to: "documents#generate_pdf"
  get :index, to: "login#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
