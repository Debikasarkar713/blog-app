Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do 
  
  resources :blog_posts, path: 'admin/blog_posts'
  get 'admins/index'
  root to: 'admins#index'
  end

  get 'home/index'
  
  resources :blog_posts 

  root 'home#index'
end
