WeeklyReport::Application.routes.draw do

  root :to => "reports#index"

  get "/", :to => "reports#index", :as => :reports
  post "/", :to => "reports#create", :as => false


end
