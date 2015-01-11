require 'rails_helper'

RSpec.describe "payments/new", :type => :view do
  before(:each) do
    assign(:payment, Payment.new(
      :amount => 1.5,
      :platform => "MyString",
      :actor_id => 1,
      :target_id => 1,
      :reporter_id => 1
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_platform[name=?]", "payment[platform]"

      assert_select "input#payment_actor_id[name=?]", "payment[actor_id]"

      assert_select "input#payment_target_id[name=?]", "payment[target_id]"

      assert_select "input#payment_reporter_id[name=?]", "payment[reporter_id]"
    end
  end
end
