require 'rails_helper'

RSpec.describe "grocery_units/index", :type => :view do
  before(:each) do
    assign(:grocery_units, [
      GroceryUnit.create!(
        :name => "Name"
      ),
      GroceryUnit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of grocery_units" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
