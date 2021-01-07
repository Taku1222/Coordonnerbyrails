Rails.application.routes.draw do
  get "post/:id/comment/new" => "comment#new"
  post "post/:id/comment/create" => "comment#create"
  get "post/:id/comment/:id" => "comment#show"
  post "post/:id/comment/:id/destroy" =>"comment#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "post/picpost" => "post#picpost"
  get "post/index" => "post#index"
  get "post/new" => "post#new"
  get "post/:id" => "post#show"
  post "post/create" => "post#create"
  get "post/:id/edit" => "post#edit"
  post "post/:id/update" => "post#update"
  post "post/:id/destroy" => "post#destroy"

  get "/" => "home#top"

  resources :blogs
  root 'blogs#index'

end
