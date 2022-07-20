Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, shallow: true, except: %i[edit update destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
