Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  get '/userBook' => 'books#userBook'
  resources :books, :users, :reviews
  get "books", to: "books#index"
  get "books/new", to: "books#new"
  post "books", to: "books#create"
  get "books/:id/edit", to: "books#edit", as: :book_edit
  patch "books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
  get "books/:id", to: "books#show"

  get "reviews/new", to: "reviews#new"
  post  "reviews" , to: "reviews#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
