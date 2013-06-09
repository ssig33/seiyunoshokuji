Seiyunoshokuji::Application.routes.draw do
  match 'auth/:provider/callback' => 'session#create', via: [:get, :post]
  delete '/session' => 'session#destroy'
  
  post 'meals' => 'meals#create'
  get 'meal/:id' => 'meals#show', as: :meal
  get 'meal/edit/:id' => 'meals#edit', as: :meal_edit
  patch 'meal/:id' => 'meals#update'

  root to: 'welcome#index'
end
