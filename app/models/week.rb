class Week < ActiveRecord::Base
  has_many :schedules
  has_many :meals
  has_many :guest_lists

  has_many :users, through: :schedules
  has_many :dishes, through: :meals
  has_many :grocery_items, through: :dishes
  default_scope {order(:start_date)}

  # make calculations to get grocery_items per week, adding the same type of meals

  def grocery_list
    p=grocery_items.group_by{|e| e.ingredient.name}
    p.each_value.map do |v|
      v.amount
    end

    inject
    grocery_items.each do |e|
      e.ingredient
    end
  end

  # validations for end come after start
  # use calendar
  # only set start_date because it is only 7 days
  # should have made this name more generic
  def to_label
    start_date
  end
end
# item_one = {i:1,a:3,u:1}
# item_two = {i:1,a:4,u:1}
# item_three= {i:1,a:5,u:2}
# g=[item_one, item_two, item_three]

 
# g.group_by{|e| e.i}

# combine items based on i
# add a together when u is the same


# when i and u are equal add a together

# g.each_with_object([]){|i,a| a << i.i}


# g.group


# select sum(amount), ingredient_name, unit_name from grocery_item 
# INNER JOINS....
# where week=1 group by 2,3


# i can group by ingredient adn unit then take the sum of those groups.


