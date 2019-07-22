# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, :envelopes, :categories,
            :spendings, except: %i[new edit]
  resources :users do
    resources :envelopes
  end
  # Custom routes
  get '/users' => 'users#index'
  post '/users' => 'users#create'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
