Rails.application.routes.draw do
  resources :testimonials do
    resources :comments
  end
  resources :tricks
  resources :puppies
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
