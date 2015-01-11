require 'rails_helper'

RSpec.describe "paids/new", :type => :view do
  before(:each) do
    assign(:paid, Paid.new(
      :amount => 1.5,
      :platform => "MyString",
      :actor_id => 1,
      :target_id => 1,
      :reproter_id => 1
    ))
  end

  it "renders new paid form" do
    render

    assert_select "form[action=?][method=?]", paids_path, "post" do

      assert_select "input#paid_amount[name=?]", "paid[amount]"

      assert_select "input#paid_platform[name=?]", "paid[platform]"

      assert_select "input#paid_actor_id[name=?]", "paid[actor_id]"

      assert_select "input#paid_target_id[name=?]", "paid[target_id]"

      assert_select "input#paid_reproter_id[name=?]", "paid[reproter_id]"
    end
  end
end
