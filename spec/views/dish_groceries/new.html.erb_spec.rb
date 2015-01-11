require 'rails_helper'

RSpec.describe "dish_groceries/new", :type => :view do
  before(:each) do
    assign(:dish_grocery, DishGrocery.new(
      :grocery_item => nil,
      :dish => nil
    ))
  end

  it "renders new dish_grocery form" do
    render

    assert_select "form[action=?][method=?]", dish_groceries_path, "post" do

      assert_select "input#dish_grocery_grocery_item_id[name=?]", "dish_grocery[grocery_item_id]"

      assert_select "input#dish_grocery_dish_id[name=?]", "dish_grocery[dish_id]"
    end
  end
end
