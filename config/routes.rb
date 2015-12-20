Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'home#index'

  get '/posts/:id', to: 'posts#show', as: :show_post
  post '/posts/:id/add_comment', to: 'posts#add_comment', as: :add_comment
  get '/feed', to: 'posts#feed', as: :feed

  get '/pages/author', to: 'static_pages#author', as: :author_page
  get '/pages/contact_me', to: 'static_pages#contact_me', as: :contact_me_page
end
