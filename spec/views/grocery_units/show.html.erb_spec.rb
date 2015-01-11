require 'rails_helper'

RSpec.describe "grocery_units/show", :type => :view do
  before(:each) do
    @grocery_unit = assign(:grocery_unit, GroceryUnit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
