WeeklyReport::Application.routes.draw do

  post "/", :to => "reports#create", :as => :reports
  get "/", :to => "reports#index", :as => false

  root :to => "reports#index"

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end
end
