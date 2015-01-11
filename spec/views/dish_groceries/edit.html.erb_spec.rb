require 'rails_helper'

RSpec.describe "dish_groceries/edit", :type => :view do
  before(:each) do
    @dish_grocery = assign(:dish_grocery, DishGrocery.create!(
      :grocery_item => nil,
      :dish => nil
    ))
  end

  it "renders the edit dish_grocery form" do
    render

    assert_select "form[action=?][method=?]", dish_grocery_path(@dish_grocery), "post" do

      assert_select "input#dish_grocery_grocery_item_id[name=?]", "dish_grocery[grocery_item_id]"

      assert_select "input#dish_grocery_dish_id[name=?]", "dish_grocery[dish_id]"
    end
  end
end
