
Rails.application.routes.draw do

  devise_for :users, :controllers => {registrations: 'users/registrations'}
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root "articles#index"

  post "articles/riya", to: 'articles#riya_post'
  resources :articles do
    resources :comments
  end
 
end