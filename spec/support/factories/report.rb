FactoryGirl.define do

  factory :report do
    user { FactoryGirl.create(:user) }
    current_activities "current activity"
    next_activities "next activity"
  end

  factory :user do
    name "John Doe"
    email "john@doe.com"
  end
end