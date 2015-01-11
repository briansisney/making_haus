class Meal < ActiveRecord::Base
  belongs_to :week
  has_many :meal_dishes
  has_many :dishes, through: :meal_dishes

  default_scope order: :meal_date
end
