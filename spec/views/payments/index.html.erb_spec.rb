require 'rails_helper'

RSpec.describe "payments/index", :type => :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :amount => 1.5,
        :platform => "Platform",
        :actor_id => 1,
        :target_id => 2,
        :reproter_id => 3
      ),
      Payment.create!(
        :amount => 1.5,
        :platform => "Platform",
        :actor_id => 1,
        :target_id => 2,
        :reproter_id => 3
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Platform".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
