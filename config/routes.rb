Rails.application.routes.draw do
  root to: 'diaries#index'
  resources :diaries, only: [:index, :new, :create, :destroy, :edit, :update]
end
