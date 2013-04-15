WeeklyReport::Application.routes.draw do

  get "/users", :to => "users#index", :as => :users
  
  get "/users/new", :to => "users#new", :as => :new_user
  post "/users/new", :to => "users#create", :as => false 

  get "users/delete/:id", :to => "users#delete", :as => :delete_user 

  post "/", :to => "reports#create", :as => :new_report
  get "/", :to => "reports#index", :as => false
  get "/reports/new", :to => "reports#index", :as => false

  root :to => "reports#index"

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end
end
