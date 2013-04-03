class Report < ActiveRecord::Base
  attr_accessible :current_activities, :next_activities, :user_id
  validates_presence_of :current_activities, :user_id

  belongs_to :user
end
