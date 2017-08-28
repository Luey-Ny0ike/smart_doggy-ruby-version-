Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :registrations => "users/registrations"}
  root to: 'home#index'
  resources :testimonials do
    resources :comments
  end
  resources :tricks
  resources :puppies
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
