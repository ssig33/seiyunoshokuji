Seiyunoshokuji::Application.routes.draw do
  match 'auth/:provider/callback' => 'session#create', via: [:get, :post]
  delete '/session' => 'session#destroy'
  
  post 'meals' => 'meals#create'
  get 'meal/:id' => 'meals#show', as: :meal

  root to: 'welcome#index'
end
