require 'rails_helper'

RSpec.describe "receipts/index", :type => :view do
  before(:each) do
    assign(:receipts, [
      Receipt.create!(
        :name => "Name",
        :description => "MyText",
        :picture => "Picture",
        :email => false
      ),
      Receipt.create!(
        :name => "Name",
        :description => "MyText",
        :picture => "Picture",
        :email => false
      )
    ])
  end

  it "renders a list of receipts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
