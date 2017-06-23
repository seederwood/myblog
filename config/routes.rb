Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts
  get 'users/:id/posts' => 'users#index', :as => :user_posts

  root 'posts#index'
end
