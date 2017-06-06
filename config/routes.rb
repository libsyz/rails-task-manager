Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list all tasks
  # get "tasks", to: "tasks#index"

  # # Add a new task
  # # 1- Go to the form that adds the task / GET request
  # get "tasks/new", to: "tasks#new", as: "task"
  # # 2- Add the task into the database / POST request
  # post "tasks", to: "tasks#create"

  # # Update a task
  # # 1 - go to the form that edits the task / GET request
  # get "task/:id/update", to: "tasks#update"
  # # 2 - send the information to update the task / PATCH request
  # patch 'task/:id', to: "tasks#edit"

  # # Delete a task
  # delete 'task/:id', to: "tasks#destroy"


  # # get a specific task
  # get "tasks/:id", to: "tasks#show"

  resources :tasks






end

