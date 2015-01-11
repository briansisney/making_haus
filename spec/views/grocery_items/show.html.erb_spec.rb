require 'rails_helper'

RSpec.describe "grocery_items/show", :type => :view do
  before(:each) do
    @grocery_item = assign(:grocery_item, GroceryItem.create!(
      :ingredient => nil,
      :amount => 1.5,
      :grocery_unit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
