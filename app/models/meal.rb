class Meal < ActiveRecord::Base
  belongs_to :week
  has_many :meal_dishes
  has_many :dishes, through: :meal_dishes

  default_scope {order(:meal_date)}
  # make a way to add previous dishes to the week or create new dishes on same page. 
  # make a platform for alchohol, date is then not required
  # validation that the date is within the week. Maybe just give days written out: Monday, etc.
end
