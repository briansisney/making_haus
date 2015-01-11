require 'rails_helper'

RSpec.describe "user_allergies/index", :type => :view do
  before(:each) do
    assign(:user_allergies, [
      UserAllergy.create!(
        :user => nil,
        :allergy => nil
      ),
      UserAllergy.create!(
        :user => nil,
        :allergy => nil
      )
    ])
  end

  it "renders a list of user_allergies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
