Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations"}
  root to: 'home#index'
  resources :testimonials do
    resources :comments
  end
  resources :tricks
  resources :puppies
  resources :dogs
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
