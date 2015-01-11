class GroceryItem < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :grocery_unit
  has_many :dish_groceries
  has_many :dishes, through: :dish_groceries

  # make a way for people to add as personal item that is not split in the house. Then have a way for orderer to note how much item cost and issue a credit to the house and an expense to just this person. 
  
end
