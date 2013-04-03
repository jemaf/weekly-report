class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates_presence_of :email, :name

  has_many :reports
end
