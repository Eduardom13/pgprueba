Rails.application.routes.draw do
  get 'welcome/index'
  resources :documents
  get "/save" ,to: "documents#guardar"

  root :to => "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end