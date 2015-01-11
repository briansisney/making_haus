require 'rails_helper'

RSpec.describe "allergies/index", :type => :view do
  before(:each) do
    assign(:allergies, [
      Allergy.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Allergy.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of allergies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
