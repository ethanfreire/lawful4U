Rails.application.routes.draw do
  get 'case/show'
  get 'case/index'
  get 'case/edit'
  get 'case/update'
  get 'case/new'
  get 'case/destroy'
  get 'case/create'
  resources :lawyers
  resources :clients
end
