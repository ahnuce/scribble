Rails.application.routes.draw do
  resources :animes do
  resources :comments

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
 root 'animes#index'
end
