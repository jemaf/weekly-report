class Report < ActiveRecord::Base
  attr_accessible :current_activities, :name, :next_activities

  validates_presence_of :name, :current_activities
end
