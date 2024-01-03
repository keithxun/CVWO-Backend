Rails.application.routes.draw do
  # get '/current_user', to: 'current_user#index'
  resources :posts do
    resources :comments
  end
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  #root "posts#index"
end
#http://localhost:3000/rails/info/routes 
 