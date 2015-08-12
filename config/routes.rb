Rails.application.routes.draw do
  root             'static_pages#home'
  get 'about'   => 'static_pages#about'
  get 'case_studies'   => 'static_pages#case_studies'
  get 'contact' => 'static_pages#contact'
  get 'how_to'  =>  'static_pages#how_to_play'
  get 'signup' => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'games/:game_id/questions/finish_game' => 'questions#finish_game'
  get ':game_id/print_game' => 'games#print_game'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :games,          only: [:create, :destroy, :edit, :update] do
    resources :questions,          only: [:index, :new, :create, :destroy, :edit, :update, :show]
  end
end
