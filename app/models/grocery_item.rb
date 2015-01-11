class GroceryItem < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :grocery_unit
end
