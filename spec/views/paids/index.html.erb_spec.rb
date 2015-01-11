require 'rails_helper'

RSpec.describe "paids/index", :type => :view do
  before(:each) do
    assign(:paids, [
      Paid.create!(
        :amount => 1.5,
        :platform => "Platform",
        :actor_id => 1,
        :target_id => 2,
        :reproter_id => 3
      ),
      Paid.create!(
        :amount => 1.5,
        :platform => "Platform",
        :actor_id => 1,
        :target_id => 2,
        :reproter_id => 3
      )
    ])
  end

  it "renders a list of paids" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Platform".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
