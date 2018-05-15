Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #show all tasks
  get "tasks", to: "tasks#index"

  # create one task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # read one task
  get "tasks/:id", to: "tasks#show", as: :task

  #update one task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  #delete task
  delete "tasks/:id/delete", to: "tasks#destroy", as: :delete

end
