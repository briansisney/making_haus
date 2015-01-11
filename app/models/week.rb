class Week < ActiveRecord::Base
  has_many :schedules
  has_many :meals

  # make calculations to get grocery_items per week
end
