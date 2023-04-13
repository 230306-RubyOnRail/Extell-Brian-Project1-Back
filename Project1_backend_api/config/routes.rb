Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'reimbursement', to: 'reimbursement#index'
  get 'reimbursement/list', to: 'reimbursement#list'
  get 'reimbursement/show/:id', to: 'reimbursement#show'
  post 'reimbursement', to: 'reimbursement#create'
  get 'reimbursement', to: 'reimbursement#new'
  delete 'reimbursement/:id', to: 'reimbursement#destroy'


  #put path: '/reimbursement/:id', to: 'reimbursement#update'
  #post path: '/signup', to: 'user#create'
  #post path: '/login', to: 'session#create'
  #delete path: '/logout', to: 'session#destroy'
end
