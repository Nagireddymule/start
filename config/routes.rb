Rails::application.routes.draw do
  resources :purchases
  resources :employees
  resources :companies do
  	collection { post :import }
  end	

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/features'

  get 'welcome/login'

  resources :invoices
  root to:'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
