Rails.application.routes.draw do
  get 'welcome/index'
  resources :documents
  get "/save" ,to: "documents#guardar",:remote => true
  get "/savea" ,to: "documents#galert",:remote => true

  root :to => "documents#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# add_column :alerts, :ecda1, :float
# add_column :alerts, :ecda2, :float
# add_column :alerts, :ecda3, :float
# add_column :alerts, :ecda4, :float
# add_column :alerts, :ecca1, :float
# add_column :alerts, :ecca2, :float
# add_column :alerts, :ecca3, :float
# add_column :alerts, :ecca4, :float
# add_column :alerts, :ecva1, :float
# add_column :alerts, :ecva2, :float
# add_column :alerts, :ecva3, :float
# add_column :alerts, :ecva4, :float
# add_column :alerts, :ecva5, :float
# add_column :alerts, :ecva6, :float
# add_column :alerts, :ecva7, :float
# add_column :alerts, :ecva8, :float
