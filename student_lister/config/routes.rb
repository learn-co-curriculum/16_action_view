Rails.application.routes.draw do

  get '/courses', to: 'courses#index', as: 'courses'
  get '/courses/something_else', to: 'courses#something_else'
  #resources :courses, only: [:index]

  # The following is defined by resources
  # index
  # get '/students', to: 'students#index', as: 'students'
  # # new
  # get '/students/new', to: 'students#new'
  # #show
  # get '/students/:id', to: 'students#show', as: 'student'
  # #edit
  # get '/students/:id/edit', to: 'students#edit'
  # # create
  # post '/students', to: 'students#create'
  # # update
  # patch '/students/:id', to: 'students#update'
  # # delete
  # delete '/students/:id', to: 'students#destroy'


end
