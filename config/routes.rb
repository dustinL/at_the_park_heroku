Rails.application.routes.draw do

  match('/', {via: :get, to: 'parks#index'})
  match('parks', {via: :get, to: 'parks#index'})
  match('parks', {via: :post, to: 'parks#create'})
  match('parks/new', {via: :get, to: 'parks#new'})
  match('parks/:id/edit', {via: :get, to: 'parks#edit'})
  match('parks/:id', {via: :get, to: 'parks#show'})
  match('parks/:id', {via: [:patch, :put], to: 'parks#update'})
  match('parks/:id', {via: :delete, to: 'parks#destroy'})

  match('users', {via: :get, to: 'users#index'})
  match('users/new', {via: :get, to: 'users#new'})
  match('users', {via: :post, to: 'users#create'})
  match('users/:id', {via: :get, to: 'users#show'})


  resources :dogs do
    resources :cats
  end
end
