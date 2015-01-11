class DishGrocery < ActiveRecord::Base
  belongs_to :grocery_item
  belongs_to :dish
end
