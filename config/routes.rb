Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts do
    resources :comments
  end
  get 'users/:id/posts' => 'users#post', :as => :user_posts

  root 'posts#index'
end
