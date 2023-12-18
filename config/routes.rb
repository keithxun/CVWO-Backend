Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sign_in: 'users/sessions'
  }
  #root "posts#index"
  resources :posts do
    resources :comments
  end
end
 