class MealDish < ActiveRecord::Base
  belongs_to :meal
  belongs_to :dish
end
