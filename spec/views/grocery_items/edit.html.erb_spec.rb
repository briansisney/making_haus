require 'rails_helper'

RSpec.describe "grocery_items/edit", :type => :view do
  before(:each) do
    @grocery_item = assign(:grocery_item, GroceryItem.create!(
      :ingredient => nil,
      :amount => 1.5,
      :grocery_unit => nil
    ))
  end

  it "renders the edit grocery_item form" do
    render

    assert_select "form[action=?][method=?]", grocery_item_path(@grocery_item), "post" do

      assert_select "input#grocery_item_ingredient_id[name=?]", "grocery_item[ingredient_id]"

      assert_select "input#grocery_item_amount[name=?]", "grocery_item[amount]"

      assert_select "input#grocery_item_grocery_unit_id[name=?]", "grocery_item[grocery_unit_id]"
    end
  end
end
