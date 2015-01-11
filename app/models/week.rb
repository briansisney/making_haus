class Week < ActiveRecord::Base
  has_many :schedules
  has_many :meals

  default_scope order: :start_date
  # make calculations to get grocery_items per week
end
