Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  root to: 'lists#index', as: 'lists'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
