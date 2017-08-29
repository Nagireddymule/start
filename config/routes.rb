Rails::application.routes.draw do
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

  resources :invoices do
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end  

  root to:'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
