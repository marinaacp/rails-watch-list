Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :list, shallow: true, except: %i[edit update destroy] do
    resources :bookmark, only: %i[new create]
  end
end
