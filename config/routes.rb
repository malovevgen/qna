Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    resources :answers, except: [:edit, :update, :destroy]
  end

  root to: 'questions#index' 
end
