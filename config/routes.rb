WeeklyReport::Application.routes.draw do

  root :to => "report#index"

  get "report/index"

end
