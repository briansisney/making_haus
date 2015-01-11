class Dish < ActiveRecord::Base
  belongs_to :user
  has_many :meal_dishes
  has_many :meals, through: :meal_dishes
  has_many :dish_groceries
  has_many :grocery_items, through: :dish_groceries
end
