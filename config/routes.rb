Rails.application.routes.draw do
  resources :students, only: :index

  #new action
  get "/students/new", to: "students#new"

  #create action
  post "/students", to: "students#create", as: :new_student

  get '/students/:id', to: 'students#show', as: :student


end
