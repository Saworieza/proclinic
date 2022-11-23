Rails.application.routes.draw do
  resources :labs
  resources :payments
  resources :admissions
  resources :rooms
  resources :wards
  resources :diagnoses
  resources :appointments
  resources :departments
  resources :doctors
  resources :patients
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
