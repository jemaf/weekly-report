class Report < ActiveRecord::Base
  attr_accessible :current_activities, :name, :next_activities
end
