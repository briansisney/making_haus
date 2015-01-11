class GroceryUnit < ActiveRecord::Base
  has_many :grocery_items
  # use a lookup or create method
end
