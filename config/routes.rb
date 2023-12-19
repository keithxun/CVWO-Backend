Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sign_in: 'users/sessions'
  }
  #root "posts#index"
end
#http://localhost:3000/rails/info/routes 
 