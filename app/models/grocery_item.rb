class GroceryItem < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :grocery_unit
  has_many :dish_groceries
  has_many :dishes, through: :dish_groceries
end
