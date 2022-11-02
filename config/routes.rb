Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :trivia, only: [:index]
      get 'charities/wildlife', to: 'charities#wildlife'
    end
  end


end
