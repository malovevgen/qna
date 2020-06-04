Rails.application.routes.draw do
  devise_for :users
  resources :questions, except: [:edit, :update, :destroy] do
    resources :answers, except: [:edit, :update, :destroy]
  end

  root to: 'questions#index' 
end
