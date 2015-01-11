require 'rails_helper'

RSpec.describe "grocery_items/index", :type => :view do
  before(:each) do
    assign(:grocery_items, [
      GroceryItem.create!(
        :ingredient => nil,
        :amount => 1.5,
        :grocery_unit => nil
      ),
      GroceryItem.create!(
        :ingredient => nil,
        :amount => 1.5,
        :grocery_unit => nil
      )
    ])
  end

  it "renders a list of grocery_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
