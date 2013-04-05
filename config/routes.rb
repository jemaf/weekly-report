WeeklyReport::Application.routes.draw do

  get "/user/new", :to => "users#new", :as => :new_user
  post "/user/new", :to => "users#create", :as => false 

  get "user/delete"

  get "user/index", :to => "users#index", :as => :users

  post "/", :to => "reports#create", :as => :new_report
  get "/", :to => "reports#index", :as => false

  root :to => "reports#index"

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end
end
